abstract class Validator {
  static String? nameValidator(value) {
    if (value!.isEmpty) {
      return '* الاسم مطلوب';
    } else if (value.length < 3) {
      return '* يجب أن يكون الاسم على الأقل 3 أحرف';
    }
    return null;
  }

  static String? phoneValidator(value) {
    if (value!.isEmpty) {
      return '* رقم الهاتف مطلوب';
    } else if (value.length != 11) {
      return '* يجب أن يحتوي رقم الهاتف على 11 رقمًا';
    } else if (!value.startsWith("01")) {
      return '* يجب أن يبدأ رقم الهاتف بـ 01';
    }
    return null;
  }

  static String? emailValidator(value) {
    if (value!.isEmpty) {
      return '* البريد الإلكتروني مطلوب';
    }
    // إذا أردت التأكد من نهاية الإيميل بـ @gmail.com أزل التعليق عن الأسطر التالية
    // else if (!value.endsWith("@gmail.com")) {
    //   return '* يجب أن ينتهي البريد الإلكتروني بـ @gmail.com';
    // }
    else if (value.length < 13) {
      return '* يجب أن يكون البريد الإلكتروني على الأقل 13 حرفًا';
    }
    return null;
  }

  static String? passwordValidator(value) {
    if (value!.isEmpty) {
      return '* كلمة المرور مطلوبة';
    } else if (value.length < 7) {
      return '* يجب أن تكون كلمة المرور على الأقل 7 أحرف';
    } else if (!RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{7,}$')
        .hasMatch(value)) {
      return '* يجب أن تحتوي كلمة المرور على حرف كبير وحرف صغير ورقم';
    }
    else if (value.contains(' ')) {
      return '* كلمة المرور لا يمكن أن تحتوي على مسافات';
    }
    return null;
  }

  static String? otpValidator(value) {
    if (value!.isEmpty) {
      return '* رمز التحقق مطلوب';
    } else if (value.length != 1) {
      return 'الرجاء إدخال رقم تحقق صحيح';
    }
    return null;
  }

  static String? confirmPasswordValidator(value) {
    if (value!.isEmpty) {
      return '* تأكيد كلمة المرور مطلوب';
    }
    // else if (value! != passwordValidator(value)) {
    //   return '* كلمة المرور غير متطابقة';
    // }
    else if (value.length < 7) {
      return '* يجب أن تكون كلمة المرور على الأقل 7 أحرف';
    }
    return null;
  }
}
