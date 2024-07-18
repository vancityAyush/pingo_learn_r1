import 'package:flutter/material.dart';
import 'package:pingo_learn_r1/core/core.dart';

class RoundedLoadingButton extends StatelessWidget {
  final Future<void> Function()? onPressed;
  final String text;
  const RoundedLoadingButton({super.key, this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> isLoading = ValueNotifier(false);
    return ValueListenableBuilder<bool>(
      valueListenable: isLoading,
      builder: (context, loading, child) {
        return ElevatedButton(
          onPressed: loading
              ? null
              : () async {
                  isLoading.value = true;
                  await onPressed?.call();
                  isLoading.value = false;
                },
          child: loading
              ? const CircularProgressIndicator(
                  color: AppColors.white,
                )
              : Text(text),
        );
      },
    );
  }
}
