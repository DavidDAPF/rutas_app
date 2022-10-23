class Data {
  final String comando;
  final String comentario;

  Data({required this.comando, required this.comentario});
}

class Enlace {
  static final datos = <Data>[
    Data(
        comando: '>_ uname -a',
        comentario: '// Sirve para mostrar la arquitectura de la maquina'),
    Data(
        comando: '>_ sudo dmidecode',
        comentario:
            '// Sirve para ver los componentes de hardware del sistema'),
    Data(
        comando: '>_ lshw',
        comentario:
            '// sirve para ver todos los detalles de los componentes del equipo'),
    Data(
        comando: '>_ lspci',
        comentario: '// Sirve para ver los dispositivos PCI'),
    Data(
        comando: '>_ lsusb',
        comentario: '// Sirve para ver los dispositivos USB'),
    Data(
        comando: '>_ arch',
        comentario: '// Sirve para ver la arquitectura de la maquina'),
  ];
}
