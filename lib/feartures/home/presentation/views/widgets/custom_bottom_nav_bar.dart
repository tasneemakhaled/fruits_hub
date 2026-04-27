import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/constants/app_images.dart';
import 'package:fruits_hub/feartures/home/domain/entites/bottom_navigation_bar_entity.dart';
import 'package:fruits_hub/feartures/home/presentation/views/widgets/nav_bar_item.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int selectedIndex = 0;
  List<BottomNavigationBarEntity> nav_items = [
    BottomNavigationBarEntity(
      inActiveIcon: AppImages.assetsImagesInactiveHome,
      activeIcon: AppImages.assetsImagesActiveHome,
      label: 'الرئيسية',
    ),
    BottomNavigationBarEntity(
      inActiveIcon: AppImages.assetsImagesInactiveProducts,
      activeIcon: AppImages.assetsImagesActiveProducts,
      label: 'المنتجات',
    ),
    BottomNavigationBarEntity(
      inActiveIcon: AppImages.assetsImagesInactiveShoppingCart,
      activeIcon: AppImages.assetsImagesActiveShoppingCart,
      label: 'سلة التسوق',
    ),
    BottomNavigationBarEntity(
      inActiveIcon: AppImages.assetsImagesInactiveUser,
      activeIcon: AppImages.assetsImagesActiveUser,
      label: 'حسابي',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 70,
      decoration: ShapeDecoration(
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 25,
            offset: Offset(0, -2),
            spreadRadius: 0,
          ),
        ],

        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(nav_items.length, (index) {
          return GestureDetector(
            onTap: () {
              selectedIndex = index;
              setState(() {});
            },
            child: NavBarItem(
              isSelected: selectedIndex == index,
              bottomNavigationBarEntity: nav_items[index],
            ),
          );
        }),
      ),
    );
  }
}
// import 'package:flutter/material.dart';

// class CustomBottomNavBar extends StatefulWidget {
//   const CustomBottomNavBar({super.key});

//   @override
//   State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
// }

// class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
//   int currentIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 375,
//       height: 70,
//       decoration: ShapeDecoration(
//         shadows: [
//           BoxShadow(
//             color: Color(0x19000000),
//             blurRadius: 25,
//             offset: Offset(0, -2),
//             spreadRadius: 0,
//           ),
//         ],

//         color: Colors.white,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadiusGeometry.only(
//             topLeft: Radius.circular(30),
//             topRight: Radius.circular(30),
//           ),
//         ),
//       ),
//       child: BottomNavigationBar(
//         currentIndex: currentIndex,
//         onTap: (index) {
//           setState(() {
//             currentIndex = index;
//           });
//         },
//         items: [
//           // ---- زر 1: الرئيسية ----
//           BottomNavigationBarItem(
//             label: '',
//             icon: _buildIcon(
//               index: 0,
//               activeIcon: Icons.home,
//               inactiveIcon: Icons.home_outlined,
//               label: 'الرئيسية',
//             ),
//           ),

//           // ---- زر 2: المنتجات ----
//           BottomNavigationBarItem(
//             label: '',
//             icon: _buildIcon(
//               index: 1,
//               activeIcon: Icons.grid_view,
//               inactiveIcon: Icons.grid_view_outlined,
//               label: 'المنتجات',
//             ),
//           ),

//           // ---- زر 3: سلة التسوق ----
//           BottomNavigationBarItem(
//             label: '',
//             icon: _buildIcon(
//               index: 2,
//               activeIcon: Icons.shopping_cart,
//               inactiveIcon: Icons.shopping_cart_outlined,
//               label: 'سلة التسوق',
//             ),
//           ),

//           // ---- زر 4: حسابي ----
//           BottomNavigationBarItem(
//             label: '',
//             icon: _buildIcon(
//               index: 3,
//               activeIcon: Icons.person,
//               inactiveIcon: Icons.person_outline,
//               label: 'حسابي',
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   // ---- دالة بتبني شكل كل زر ----
//   Widget _buildIcon({
//     required int index,
//     required IconData activeIcon,
//     required IconData inactiveIcon,
//     required String label,
//   }) {
//     bool isActive = currentIndex == index;

//     // لو مش مضغوط: أيقونة outlined بس
//     if (!isActive) {
//       return Icon(inactiveIcon, color: Colors.grey);
//     }

//     // لو مضغوط: الشكل الكامل
//     return Container(
//       height: 35,
//       width: 100,
//       decoration: BoxDecoration(
//         color: Color(0xffeeeeee),
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           // الدايرة الخضرا مع الأيقونة
//           CircleAvatar(
//             backgroundColor: Color(0xff2D6A4F),
//             radius: 14,
//             child: Icon(activeIcon, color: Colors.white, size: 18),
//           ),

//           SizedBox(width: 4),

//           // النص
//           Text(
//             label,
//             style: TextStyle(
//               fontSize: 11,
//               fontWeight: FontWeight.w600,
//               color: Color(0xff2D6A4F),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// // }
// // import 'package:flutter/material.dart';

// // class CustomBottomNavBar extends StatefulWidget {
// //   const CustomBottomNavBar({super.key});

// //   @override
// //   State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
// // }

// // class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
// //   int currentIndex = 0;

// //   @override
// //   Widget build(BuildContext context) {
// //     return BottomNavigationBar(
// //       currentIndex: currentIndex,
// //       onTap: (index) {
// //         setState(() {
// //           currentIndex = index;
// //         });
// //       },
// //       items: [
// //         // ---- زر 1: الرئيسية ----
// //         BottomNavigationBarItem(
// //           label: '',
// //           icon: _buildIcon(
// //             index: 0,
// //             icon: Icons.home_outlined,
// //             label: 'الرئيسية',
// //           ),
// //         ),

// //         // ---- زر 2: المنتجات ----
// //         BottomNavigationBarItem(
// //           label: '',
// //           icon: _buildIcon(
// //             index: 1,
// //             icon: Icons.grid_view_outlined,
// //             label: 'المنتجات',
// //           ),
// //         ),

// //         // ---- زر 3: سلة التسوق ----
// //         BottomNavigationBarItem(
// //           label: '',
// //           icon: _buildIcon(
// //             index: 2,
// //             icon: Icons.shopping_cart_outlined,
// //             label: 'سلة التسوق',
// //           ),
// //         ),

// //         // ---- زر 4: حسابي ----
// //         BottomNavigationBarItem(
// //           label: '',
// //           icon: _buildIcon(
// //             index: 3,
// //             icon: Icons.person_outline,
// //             label: 'حسابي',
// //           ),
// //         ),
// //       ],
// //     );
// //   }

// //   // ---- دالة بتبني شكل كل زر ----
// //   Widget _buildIcon({
// //     required int index,
// //     required IconData icon,
// //     required String label,
// //   }) {
// //     // هل الزر ده مضغوط دلوقتي؟
// //     bool isActive = currentIndex == index;

// //     // لو مش مضغوط: ارسم أيقونة بس
// //     if (!isActive) {
// //       return Icon(icon, color: Colors.grey);
// //     }

// //     // لو مضغوط: ارسم الشكل الكامل
// //     return Container(
// //       height: 35,
// //       width: 100,
// //       decoration: BoxDecoration(
// //         color: Color(0xffeeeeee),
// //         borderRadius: BorderRadius.circular(20),
// //       ),
// //       child: Row(
// //         mainAxisAlignment: MainAxisAlignment.center,
// //         children: [
// //           // الدايرة الخضرا مع الأيقونة
// //           CircleAvatar(
// //             backgroundColor: Color(0xff2D6A4F),
// //             radius: 14,
// //             child: Icon(icon, color: Colors.white, size: 18),
// //           ),

// //           SizedBox(width: 4),

// //           // النص
// //           Text(
// //             label,
// //             style: TextStyle(
// //               fontSize: 11,
// //               fontWeight: FontWeight.w600,
// //               color: Color(0xff2D6A4F),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // // import 'package:flutter/material.dart';
// // // import 'package:fruits_hub/core/utils/app_colors.dart';
// // // import 'package:fruits_hub/core/utils/app_text_styles.dart';

// // // class CustomBottomNavBar extends StatefulWidget {
// // //   const CustomBottomNavBar({super.key});

// // //   @override
// // //   State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
// // // }

// // // class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
// // //   int currentIndex = 0;
// // //   List<Map<String, dynamic>> navItems = [
// // //     {
// // //       'icon': Icons.home,
// // //       'activeIcon': Icons.home_outlined,
// // //       'label': 'الرئيسية',
// // //     },
// // //     {
// // //       'icon': Icons.grid_view,
// // //       'activeIcon': Icons.grid_view_outlined,
// // //       'label': 'المنتجات',
// // //     },
// // //     {
// // //       'icon': Icons.shopping_cart,
// // //       'activeIcon': Icons.shopping_cart_outlined,
// // //       'label': 'سلة التسوق',
// // //     },
// // //     {
// // //       'icon': Icons.person,
// // //       'activeIcon': Icons.person_outline,
// // //       'label': 'حسابي',
// // //     },
// // //   ];

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Container(
// // //       decoration: BoxDecoration(
// // //         color: Colors.white,
// // //         boxShadow: [
// // //           BoxShadow(
// // //             color: Colors.black12,
// // //             blurRadius: 8,
// // //             offset: Offset(0, -2),
// // //           ),
// // //         ],
// // //       ),
// // //       child: SafeArea(
// // //         child: Padding(
// // //           padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
// // //           child: Row(
// // //             mainAxisAlignment: MainAxisAlignment.spaceAround,
// // //             children: List.generate(navItems.length, (index) {
// // //               final isActive = currentIndex == index;
// // //               return GestureDetector(
// // //                 onTap: () {
// // //                   currentIndex = index;
// // //                   setState(() {});
// // //                 },
// // //                 child: AnimatedContainer(
// // //                   height: 40,
// // //                   width: isActive ? 110 : 40,
// // //                   duration: Duration(milliseconds: 300),
// // //                   curve: Curves.easeInOut,
// // //                   child: Row(
// // //                     children: [
// // //                       CircleAvatar(
// // //                         radius: 16,
// // //                         backgroundColor: isActive
// // //                             ? AppColors.darkPrimaryColor
// // //                             : Colors.transparent,
// // //                         child: Icon(
// // //                           isActive
// // //                               ? navItems[index]['activeIcon']
// // //                               : navItems[index]['icon'],
// // //                           color: isActive ? Color(0xffeeeeee) : Colors.white,
// // //                           size: 16,
// // //                         ),
// // //                       ),
// // //                       if (isActive) ...{
// // //                         SizedBox(width: 4),
// // //                         Text(
// // //                           navItems[index]['label'],
// // //                           style: TextStyles.semiBold11.copyWith(
// // //                             color: AppColors.darkPrimaryColor,
// // //                           ),
// // //                           overflow: TextOverflow.ellipsis,
// // //                         ),
// // //                       },
// // //                     ],
// // //                   ),
// // //                 ),
// // //               );
// // //             }),
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// // // //     return BottomNavigationBar(
// // // //       currentIndex: currentIndex,
// // // //       onTap: (index) {
// // // //         currentIndex = index;

// // // //         setState(() {});
// // // //       },
// // // //       selectedLabelStyle: TextStyle(color: AppColors.darkPrimaryColor),

// // // //       items: [
// // // //         BottomNavigationBarItem(
// // // //           icon: currentIndex == 0
// // // //               ? Container(
// // // //                   height: 30,
// // // //                   width: 95,
// // // //                   padding: EdgeInsets.symmetric(horizontal: 4),
// // // //                   decoration: BoxDecoration(
// // // //                     borderRadius: BorderRadius.circular(16),
// // // //                     color: Color(0xffeeeeee),
// // // //                   ),
// // // //                   child: Row(
// // // //                     children: [
// // // //                       SizedBox(
// // // //                         height: 30,
// // // //                         width: 30,
// // // //                         child: CircleAvatar(
// // // //                           backgroundColor: AppColors.darkPrimaryColor,
// // // //                           child: Icon(Icons.home, color: Colors.white),
// // // //                         ),
// // // //                       ),
// // // //                       Text(
// // // //                         'الرئيسية',
// // // //                         style: TextStyles.semiBold11.copyWith(
// // // //                           color: AppColors.darkPrimaryColor,
// // // //                         ),
// // // //                       ),
// // // //                     ],
// // // //                   ),
// // // //                 )
// // // //               : Icon(Icons.home_outlined),
// // // //           label: '',
// // // //         ),
// // // //         BottomNavigationBarItem(
// // // //           icon: currentIndex == 1
// // // //               ? Container(
// // // //                   height: 30,
// // // //                   width: 95,
// // // //                   padding: EdgeInsets.symmetric(horizontal: 4),
// // // //                   decoration: BoxDecoration(
// // // //                     borderRadius: BorderRadius.circular(16),
// // // //                     color: Color(0xffeeeeee),
// // // //                   ),
// // // //                   child: Row(
// // // //                     children: [
// // // //                       SizedBox(
// // // //                         height: 30,
// // // //                         width: 30,
// // // //                         child: CircleAvatar(
// // // //                           backgroundColor: AppColors.darkPrimaryColor,
// // // //                           child: Icon(Icons.grid_view, color: Colors.white),
// // // //                         ),
// // // //                       ),
// // // //                       Text(
// // // //                         'المنتجات',
// // // //                         style: TextStyles.semiBold11.copyWith(
// // // //                           color: AppColors.darkPrimaryColor,
// // // //                         ),
// // // //                       ),
// // // //                     ],
// // // //                   ),
// // // //                 )
// // // //               : Icon(Icons.grid_view_outlined),
// // // //           label: '',
// // // //         ),
// // // //         BottomNavigationBarItem(
// // // //           icon: currentIndex == 2
// // // //               ? Container(
// // // //                   height: 30,
// // // //                   width: 95,
// // // //                   padding: EdgeInsets.symmetric(horizontal: 4),
// // // //                   decoration: BoxDecoration(
// // // //                     borderRadius: BorderRadius.circular(16),
// // // //                     color: Color(0xffeeeeee),
// // // //                   ),
// // // //                   child: Row(
// // // //                     children: [
// // // //                       SizedBox(
// // // //                         height: 30,
// // // //                         width: 30,
// // // //                         child: CircleAvatar(
// // // //                           backgroundColor: AppColors.darkPrimaryColor,
// // // //                           child: Icon(Icons.shopping_cart, color: Colors.white),
// // // //                         ),
// // // //                       ),
// // // //                       Text(
// // // //                         'سلةالتسوق',
// // // //                         style: TextStyles.semiBold11.copyWith(
// // // //                           color: AppColors.darkPrimaryColor,
// // // //                         ),
// // // //                       ),
// // // //                     ],
// // // //                   ),
// // // //                 )
// // // //               : Icon(Icons.shopping_cart_outlined, size: 16),
// // // //           label: '',
// // // //         ),
// // // //         BottomNavigationBarItem(
// // // //           icon: currentIndex == 3
// // // //               ? Container(
// // // //                   height: 30,
// // // //                   width: 95,
// // // //                   padding: EdgeInsets.symmetric(horizontal: 4),
// // // //                   decoration: BoxDecoration(
// // // //                     borderRadius: BorderRadius.circular(16),
// // // //                     color: Color(0xffeeeeee),
// // // //                   ),
// // // //                   child: Row(
// // // //                     children: [
// // // //                       SizedBox(
// // // //                         height: 30,
// // // //                         width: 30,
// // // //                         child: CircleAvatar(
// // // //                           backgroundColor: AppColors.darkPrimaryColor,
// // // //                           child: Icon(Icons.person, color: Colors.white),
// // // //                         ),
// // // //                       ),
// // // //                       Text(
// // // //                         'حسابي',
// // // //                         style: TextStyles.semiBold11.copyWith(
// // // //                           color: AppColors.darkPrimaryColor,
// // // //                         ),
// // // //                       ),
// // // //                     ],
// // // //                   ),
// // // //                 )
// // // //               : Icon(Icons.person_outline, size: 16),
// // // //           label: '',
// // // //         ),
// // // //       ],
// // // //     );
// // // //   }
// // // // }
