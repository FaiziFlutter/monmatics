class Validation {
  // Email Validation
  static String? validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter your email';
    }
    // Regular expression for email validation
    String emailPattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    RegExp regex = RegExp(emailPattern);
    if (!regex.hasMatch(value)) {
      return 'Enter a valid email address';
    }
    return null;
  }

  // Password Validation
  static String? validatePassword(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter your password';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  // First Name Validation
  static String? validateFirstName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'First Name is required';
    }
    // Regular expression to ensure only alphabetic characters
    if (!RegExp(r"^[a-zA-Z]+$").hasMatch(value)) {
      return 'First Name can only contain letters';
    }
    return null;
  }

  // Second Name Validation
  static String? validateSecondName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Second Name is required';
    }
    // Regular expression to ensure only alphabetic characters
    if (!RegExp(r"^[a-zA-Z]+$").hasMatch(value)) {
      return 'Second Name can only contain letters';
    }
    return null;
  }

  // Phone Number Validation
  static String? validatePhoneNumber(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Phone Number is required';
    }
    // Regular expression to ensure it's a 10-digit phone number
    if (!RegExp(r"^[0-9]{10}$").hasMatch(value)) {
      return 'Phone Number must be 10 digits';
    }
    return null;
  }
}
