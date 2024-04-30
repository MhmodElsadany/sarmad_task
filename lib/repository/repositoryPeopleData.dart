import 'package:sarmad_task/model/model_datapeople.dart';
import 'package:sarmad_task/network/service_data_people.dart';
import 'package:sarmad_task/repository/repositoryPepoleDataInterFace.dart';

class PeopleDataRepository implements IPoepleDataRepository {
  final DataService? getServiceData;
  PeopleDataRepository(this.getServiceData);
  @override
  Future<Model?> getData(
      {required String fname,
      required String mname,
      required String nat}) async {

    Model? data =
        await getServiceData?.getData(fname: fname, mname: mname, nat: nat);
    if (data != null) {

      return data;
    }

    return null;
  }
}
