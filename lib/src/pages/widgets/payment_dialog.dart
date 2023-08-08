import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class PaymentDialog extends StatelessWidget {
  const PaymentDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //Titulo
          const Text(
            'Pagamento com Pix',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          //QR Code
          QrImage(
            data: '1234567890',
            version: QrVersions.auto,
            size: 200.0,
          ),

          //Vencimento

          //Total

          //Botao copia e cola
        ],
      ),
    );
  }
}
