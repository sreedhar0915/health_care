// import 'package:flutter/material.dart';
// import 'package:health_care/view/Bottomnavibarscreen/Bottomnavibarscreen.dart';

// class OtpscreenController with ChangeNotifier{
//    final String email;
//   late Timer _timer;
//   int _remainingTime = 60;
//   bool _isResendEnabled = false;

//   int get remainingTime => _remainingTime;
//   bool get isResendEnabled => _isResendEnabled;

//   OtpVerificationViewModel({required this.email}) {
//     _startTimer();
//   }

//   void _startTimer() {
//     _remainingTime = 60;
//     _isResendEnabled = false;
//     notifyListeners();

//     _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
//       if (_remainingTime > 0) {
//         _remainingTime--;
//         notifyListeners();
//       } else {
//         timer.cancel();
//         _isResendEnabled = true;
//        notifyListeners();
//       }
//     });
//   }

//   void resendOtp() {
//     if (_isResendEnabled) {
//       _startTimer();
//       notifyListeners();
//     }
//   }

//   void verifyOtp(String otp, BuildContext context) {
//     if (otp == "000000") {
//       Navigator.pushAndRemoveUntil(
//         context,
//         MaterialPageRoute(builder: (context) => Bottomnavibarscreen()),
//             (route) => false, // Removes all previous routes
//       );
//     } else {

//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text("Invalid OTP. Please try again.")),
//       );
//     }
//   }

//   @override
//   void dispose() {
//     _timer.cancel();
//     super.dispose();
//  }
// }
