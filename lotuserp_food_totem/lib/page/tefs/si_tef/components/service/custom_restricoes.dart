class CustomRestricoes {
  String getRestricoes(int paymentType) {
    if (paymentType == 3) {
      return '[27;28]';
    } else if (paymentType == 2) {
      return '[27;28]';
    } else if (paymentType == 122) {
      return '{DevolveStringQRCode=0}';
    } else {
      return '[27;28]';
    }
  }
}
