class AppConstants {
  // App Information
  static const String appName = 'LifeDrop';
  static const String appVersion = '1.0.0';

  // Blood Groups
  static const List<String> bloodGroups = [
    'A+',
    'A-',
    'B+',
    'B-',
    'AB+',
    'AB-',
    'O+',
    'O-',
  ];

  // User Roles
  static const String donorRole = 'donor';
  static const String recipientRole = 'recipient';
  static const String hospitalRole = 'hospital';
  static const String bloodBankRole = 'blood_bank';
  static const String adminRole = 'admin';

  // Request Status
  static const String pendingStatus = 'pending';
  static const String acceptedStatus = 'accepted';
  static const String fulfilledStatus = 'fulfilled';
  static const String cancelledStatus = 'cancelled';

  // Verification Status
  static const String verifiedStatus = 'verified';
  static const String rejectedStatus = 'rejected';

  // Padding
  static const double paddingSmall = 8.0;
  static const double paddingMedium = 16.0;
  static const double paddingLarge = 24.0;

  // Border Radius
  static const double radiusSmall = 8.0;
  static const double radiusMedium = 12.0;
  static const double radiusLarge = 16.0;
}