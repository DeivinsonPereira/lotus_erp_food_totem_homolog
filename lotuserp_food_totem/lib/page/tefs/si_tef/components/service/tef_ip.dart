// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotus_food_totem/collections/pagamento_forma.dart';

import '../../../../../common/custom_cherry.dart';
import 'tef_tls_tipo.dart';

class CustomTefIp {
  String getTefIp(BuildContext context, pagamento_forma pagamentoForma) {
    if (pagamentoForma.tef_ip != null &&
        pagamentoForma.tef_ip.isBlank == false) {
      if (pagamentoForma.tef_tls_tipo == TefTlsTipo.NENHUMA.value) {
        return '${pagamentoForma.tef_ip}';
      } else if (pagamentoForma.tef_tls_tipo ==
          TefTlsTipo.SOFTWARE_EXPRESS.value) {
        return '${pagamentoForma.tef_ip}:443';
      } else if (pagamentoForma.tef_tls_tipo == TefTlsTipo.WNB.value) {
        return '${pagamentoForma.tef_ip}';
      } else if (pagamentoForma.tef_tls_tipo == TefTlsTipo.TEF_GSURF.value) {
        return '${pagamentoForma.tef_ip}';
      } else {
        return '';
      }
    } else {
      const CustomCherryError(message: 'Tef ip não informado').show(context);
      return '';
    }
  }
}
