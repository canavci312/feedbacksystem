import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension CupertinoThemeExtenion on BuildContext {
  get theme => CupertinoTheme.of(this);
}

extension TypeToTurkishExtension on String? {
 String? xToTurkish() {
  switch (this) {
      case 'Complaint':
        return 'Şikayet';
      case 'Suggestion':
        return 'Öneri';
      case 'Satisfaction':
        return 'Memnuniyet';
      default:
        return '';
    }
  }
}
