abstract class Failure{
  const Failure({required this.message});
  final String message;
}

class ServerFailure extends Failure{
  ServerFailure({required String message}):super(message: message);
}