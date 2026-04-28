// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:fruits_hub/core/helper_functions/get_user.dart';
// import 'package:fruits_hub/core/utils/app_colors.dart';
// import 'package:fruits_hub/core/utils/app_text_styles.dart';
// import 'package:fruits_hub/core/utils/constants/app_images.dart';

// class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const HomeAppBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       automaticallyImplyLeading: false,
//       title: Row(
//         children: [
//           CircleAvatar(
//             backgroundColor: Color(0xff5DB957),
//             child: Image.asset(height: 35, AppImages.assetsImagesProfileImage),
//           ),
//           SizedBox(width: 10),
//           Column(
//             children: [
//               Text(
//                 'صباح الخير!..',
//                 style: TextStyles.regular16.copyWith(color: Color(0xff949D9E)),
//               ),
//               Text(getUser().name, style: TextStyles.bold16),
//             ],
//           ),
//         ],
//       ),
//       actions: [
//         IconButton(
//           color: AppColors.lightPrimaryColor,
//           onPressed: () {},
//           icon: SvgPicture.asset(AppImages.assetsImagesNotificationIcon),
//         ),
//       ],
//       backgroundColor: Colors.white,
//     );
//   }

//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
// }
