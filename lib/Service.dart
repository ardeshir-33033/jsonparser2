import 'json.dart';
import 'jsonParse.dart';

class Service{

  final jsonString = jsonString1.toString();

  List<State> getStates(){
    final List<State> States = stateFromJson(jsonString);
    return States;
  }

}
