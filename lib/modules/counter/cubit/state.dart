abstract class counterStates {

}
class counterInitialState extends counterStates{}
class counterplusState extends counterStates{
  final int counter;
  counterplusState(this.counter);

}
class counterminusState extends counterStates{
  final int counter;
  counterminusState(this.counter);
}
