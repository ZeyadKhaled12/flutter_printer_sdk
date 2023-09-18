import '../../../../core/usecase/base_use_case.dart';
import '../repository/base_app_side_repo.dart';

class CheckIfLoginUc extends BaseUseCaseInside<Future<bool>, NoParameters> {
  final BaseAppSideRepo baseAppSideRepo;

  CheckIfLoginUc(this.baseAppSideRepo);

  @override
  Future<bool> change(NoParameters parameters) async {
    return await baseAppSideRepo.checkIfLogin(parameters);
  }
}
