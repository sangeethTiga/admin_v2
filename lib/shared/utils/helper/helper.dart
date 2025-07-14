import 'dart:developer';
import 'dart:io';

import 'package:admin_v2/features/auth/cubit/auth_cubit.dart';
import 'package:admin_v2/shared/routes/routes.dart';
import 'package:admin_v2/shared/utils/auth/auth_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';

class Helper {
  static void afterInit(Function function) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      function();
    });
  }

  int checkPasswordStrength(String password) {
    int score = 0;

    if (password.length >= 8) score += 35;
    if (password.length >= 12) score += 10;

    if (password.contains(RegExp(r'[a-z]'))) score += 15;

    if (password.contains(RegExp(r'[A-Z]'))) score += 15;

    if (password.contains(RegExp(r'[0-9]'))) score += 15;

    if (password.contains(
      RegExp(
        r'[!@#\$%\^&\*\(\)_\+\-=\[\]\{\};:\'
        ",.<>/?\\|`~]",
      ),
    )) {
      score += 20;
    }

    if (password.contains(
      RegExp(r'(password|1234|qwerty|abcd)', caseSensitive: false),
    )) {
      score -= 30;
    }

    score = score.clamp(1, 100);

    return score;
  }

  Map<String, dynamic> removeNullValues(Map<String, dynamic> input) {
    return Map.fromEntries(input.entries.where((e) => e.value != null));
  }

  Future<void> logout(BuildContext context) async {
    try {
      await _deleteCacheDir();
      await _deleteAppDir();
      await AuthUtils.instance.deleteAll();
      context.read<AuthCubit>().clearLogin();

      if (!context.mounted) return;

      context.go(routeSign);
    } catch (e) {
      log('Error during logout: $e');
    }
  }

  Future<void> _deleteCacheDir() async {
    try {
      Directory tempDir = await getTemporaryDirectory();
      log('Cache Directory: ${tempDir.path}');
      if (await tempDir.exists()) {
        await tempDir.delete(recursive: true);
        log('Cache directory deleted successfully.');
      } else {
        log('Cache directory does not exist.');
      }
    } catch (e) {
      log('Error deleting cache directory: $e');
    }
  }

  Future<void> _deleteAppDir() async {
    try {
      Directory appDocDir = await getApplicationDocumentsDirectory();
      log('App Documents Directory: ${appDocDir.path}');
      if (await appDocDir.exists()) {
        await appDocDir.delete(recursive: true);
        log('App directory deleted successfully.');
      } else {
        log('App directory does not exist.');
      }
    } catch (e) {
      log('Error deleting application directory: $e');
    }
  }
}

int? parseInt(dynamic value) {
  if (value is int) return value;
  if (value is String) return int.tryParse(value);
  if (value is double) return value.toInt();
  return null;
}

double? parseDouble(dynamic value) {
  if (value == null) return null;
  if (value is double) return value;
  if (value is String) return double.tryParse(value) ?? 0.0;
  if (value is int) return value.toDouble();
  return null;
}

String truncateTo2Decimals(double? value) {
  if (value == null) return '0.00';
  int truncated = (value * 100).truncate();
  return (truncated / 100).toStringAsFixed(2);
}

String parsedDate(DateTime date) => DateFormat('yyyy-MM-dd').format(date);

DateTime getCurrentDate() {
  final now = DateTime.now();
  return DateTime(now.year, now.month, now.day);
}

int? _toInt(dynamic value) {
  if (value == null) return null;
  if (value is int) return value;
  if (value is String) return int.tryParse(value);
  return null;
}
