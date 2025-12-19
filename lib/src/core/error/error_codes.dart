import 'error.dart';

List<Map<String, ApiException>> errorCodes = [
  {
    'app-not-authorized': const ApiException(
        statuscode: 200,
        message:
            "Ocoreu um erro ao veriicar o seu numero, por favor, volte a tentar mais tarde.")
  },
  {
    'too-many-requests': const ApiException(
        message:
            "Você excedeu o limite de solicitações, então o seu numero foi temporariamente impedido de solicitar codigos de verificação, por favor volte a tentar depois de alguns minutos",
        statuscode: 100)
  },
  {
    'invalid-verification-code': const ApiException(
        message:
            "O codigo que você adicionou é invalido, por favor, verifique-o e volte a tentar",
        statuscode: 500)
  },
  {
    'network-request-failed': const ApiException(
        message:
            "Parece que você esta disconectado ou a sua ligação esta lenta, verifique e volte a tentar",
        statuscode: 400)
  }
];

// ApiException error = errorCodes.firstWhere((element) => false);