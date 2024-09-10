import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled3/modules/counter/cubit/state.dart';
import 'package:bloc/bloc.dart';
class counterCubit extends Cubit<counterStates>{
  counterCubit():super(counterInitialState());

  static counterCubit get(context)=>BlocProvider.of(context);
 int counter=1;
 void minus(){
   counter--;
   emit(counterminusState(counter));
  }
  void plus(){
   counter++;
   emit(counterplusState(counter));

  }
}