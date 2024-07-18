String? emailValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Email is required';
  }
  if (!RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
    return 'Please enter a valid email';
  }
  return null;
}

String? passwordValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Password is required';
  }
  if (value.length < 6) {
    return 'Password must be at least 6 characters';
  }
  return null;
}

String? nameValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Name is required';
  }
  if (value.length < 3) {
    return 'Name must be at least 3 characters';
  }
  if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(value)) {
    return 'Please enter a valid name';
  }
  return null;
}
