import 'dart:io';
import 'dart:convert';

Future<void> main() async {
  final server = await ServerSocket.bind(InternetAddress.anyIPv4, 3000);
  print('Servidor rodando em ${server.address.address}:${server.port}');

  await for (Socket client in server) {
    print('Cliente conectado: ${client.remoteAddress.address}:${client.remotePort}');

client
  .cast<List<int>>() 
  .transform(utf8.decoder).listen((data) {
      print('Temperatura recebida: $data');
    },
    onDone: () {
      print('Cliente desconectado');
    },
    onError: (error) {
      print('Erro: $error');
    });
  }
}