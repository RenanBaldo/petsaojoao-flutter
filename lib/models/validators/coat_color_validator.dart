class CoatColorValidator {
  String validate(String value) {
    String patttern =
        r'(^[a-zA-ZàèìòùÀÈÌÒÙáéíóúýÁÉÍÓÚÝâêîôûÂÊÎÔÛãñõÃÑÕäëïöüÿÄËÏÖÜŸçÇ ]*$)';
    RegExp regExp = new RegExp(patttern);
    const breedInvalid = "Cor pelagem inválida";
    const requiredField = "O campo é obrigatorio";
    if (value.isEmpty) {
      return requiredField;
    } else if (!regExp.hasMatch(value)) {
      return breedInvalid;
    } else {
      return null;
    }
  }
}
