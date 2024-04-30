import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sarmad_task/repository/repositoryPeopleData.dart';
import '../model/model_datapeople.dart';
import '../network/service_data_people.dart';

class peopleDataBloc extends Bloc<peopleDataEvent, peopleDataState> {
  // final getServiceData = DataService();
  PeopleDataRepository _dataRepo = PeopleDataRepository(DataService());

  peopleDataBloc() : super(LoadingpeopleDataState());

  @override
  Stream<peopleDataState> mapEventToState(peopleDataEvent event) async* {
    if (event is LoadpeopleDataEvent) {
      yield LoadingpeopleDataState();

      try {
        Model? data = await _dataRepo.getData(
            fname: event.fname, mname: event.mname, nat: event.nat);
        if (data != null && data.screenResult!.isNotEmpty) {

          yield LoadedpeopleDataState(
            model: data,
          );
        } else {
          yield LoadedpeopleDataIsEmptyState();
        }} catch (e) {
        print(e);
        yield FailedpeopleDataState(error: e.toString());
      }
    }
  }
}

abstract class peopleDataEvent {}

class LoadpeopleDataEvent extends peopleDataEvent {
  String fname;
  String mname;
  String nat;

  LoadpeopleDataEvent(
      {required this.fname, required this.mname, required this.nat});
}

abstract class peopleDataState {}

class LoadingpeopleDataState extends peopleDataState {}

class LoadedpeopleDataState extends peopleDataState {
  Model? model;

  LoadedpeopleDataState({this.model});
}

class LoadedpeopleDataIsEmptyState extends peopleDataState {}

class FailedpeopleDataState extends peopleDataState {
  String? error;

  FailedpeopleDataState({this.error});
}
