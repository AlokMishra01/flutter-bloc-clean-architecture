import '../typedefs/typedefs.dart';

abstract class UseCase<Type, Param> {
  EitherResponse<Type> call(Param params);
}
