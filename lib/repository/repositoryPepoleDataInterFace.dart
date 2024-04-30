import 'package:sarmad_task/model/model_datapeople.dart';

abstract class IPoepleDataRepository {
  Future<Model?> getData({required String fname,required String mname,required String nat });
}