package com.example.flutter_printer_sdk;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;

import androidx.annotation.NonNull;

import com.imin.library.IminSDKManager;
import com.imin.library.SystemPropManager;
import com.imin.printerlib.IminPrintUtils;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.SoftReference;
import java.util.List;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {
    private static final String CHANNEL = "com.imin.printersdk";
    private static MethodChannel.Result scanResult;

    private IminPrintUtils.PrintConnectType connectType = IminPrintUtils.PrintConnectType.USB;
    @Override
    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine);
        MethodChannel channel = new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), CHANNEL);
        channel.setMethodCallHandler(
                (call, result) -> {
                    if (call.method.equals("sdkInit")) {
                        String deviceModel = SystemPropManager.getModel();
                        if(deviceModel.contains("M2-203") ||deviceModel.contains("M2-202")|| deviceModel.contains("M2 Pro") ){
                            connectType = IminPrintUtils.PrintConnectType.SPI;
                        }else {
                            connectType = IminPrintUtils.PrintConnectType.USB;
                        }
                        IminPrintUtils.getInstance(MainActivity.this).initPrinter(connectType);
                        result.success("init");
                    }else if(call.method.equals("getStatus")){
                        int status =
                                IminPrintUtils.getInstance(MainActivity.this).getPrinterStatus(connectType);
                        result.success(String.format("%d",status));
                    }else if(call.method.equals("printText")){
                        if(call.arguments() == null) return;
                        String text = ((List)call.arguments()).get(0).toString();
                        IminPrintUtils mIminPrintUtils =
                                IminPrintUtils.getInstance(MainActivity.this);
                        mIminPrintUtils.printText(text + "   \n");
                        result.success(text);
                    }else if(call.method.equals("getSn")){
                        String sn = "";
                        if (Build.VERSION.SDK_INT >= 30) {
                            sn = SystemPropManager.getSystemProperties("persist.sys.imin.sn");
                        } else {
                            sn = SystemPropManager.getSn();
                        }
                        result.success(sn);
                    }else if(call.method.equals("opencashBox")){
                        IminSDKManager.opencashBox();
                        result.success("opencashBox");
                    }else if (call.method.equals("printBitmap")){
                        byte[] image = call.argument("image");
                        Bitmap bitmap = null;
                        bitmap = byteToBitmap(image);
                        IminPrintUtils mIminPrintUtils =
                                IminPrintUtils.getInstance(MainActivity.this);
                        mIminPrintUtils.printSingleBitmap(bitmap);
                        result.success("printBitmap");
                    }
                }
        );
    }


    public static Bitmap byteToBitmap(byte[] imgByte) {
        InputStream input = null;
        Bitmap bitmap = null;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = 1;
        input = new ByteArrayInputStream(imgByte);
        SoftReference softRef = new SoftReference(BitmapFactory.decodeStream(
                input, null, options));  //�����÷�ֹOOM
        bitmap = (Bitmap) softRef.get();
        if (imgByte != null) {
            imgByte = null;
        }

        try {
            if (input != null) {
                input.close();
            }
        } catch (IOException e) {
            // �쳣����
            e.printStackTrace();
        }
        return bitmap;
    }
}
