import 'package:facebook1/core/colors/app_colors.dart';
import 'package:flutter/material.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,

        // AppBar
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Image.asset(
            'assets/images/facebook1.png',
            width: 125,
            height: 35,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_circle, color: Colors.black, size: 28),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, color: Colors.black, size: 28),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.message, color: Colors.black, size: 26),
            ),
          ],

          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(55),
            child: Row(
              children: [
                Expanded(
                  child: TabBar(
                    indicatorColor: Colors.blue,
                    labelColor: Colors.blue,
                    unselectedLabelColor: Colors.grey,
                    tabs: const [
                      Tab(icon: Icon(Icons.home)),
                      Tab(icon: Icon(Icons.ondemand_video)),
                      Tab(icon: Icon(Icons.storefront)),
                      Tab(icon: Icon(Icons.person_outline)),
                      Tab(icon: Icon(Icons.notifications_none)),
                    ],
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage('assets/images/messi2.jpg'),
                  ),
                ),
              ],
            ),
          ),
        ),

        // Body
        body: SingleChildScrollView(
          child: Column(
            children: [
              // What's on your mind
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 22,
                      backgroundImage: AssetImage('assets/images/messi2.jpg'),
                    ),

                    const SizedBox(width: 10),

                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "What's in Your Mind?",
                          hintStyle: const TextStyle(fontSize: 15),
                          border: InputBorder.none,
                          suffixIcon: Icon(
                            Icons.photo_library,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Divider(thickness: 3, color: AppColors.gray, height: 30),

              // Stories
              SizedBox(
                height:
                    230, // تم ضبط الارتفاع ليتوافق تماماً مع أبعاد الستوريز (230)
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  children: [
                    // First Story - Create Story
                    SizedBox(
                      width: 140,
                      height: 230,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: AppColors.gray),
                        ),
                        child: Stack(
                          // تحويل الهيكل الداخلي إلى Stack بالكامل للتحكم بالمحاذاة
                          children: [
                            // صورة الخلفية العلوية
                            Container(
                              width: 140,
                              height:
                                  160, // تقليل الارتفاع قليلاً لترك مساحة للنص في الأسفل
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(
                                    11,
                                  ), // 11 لتتناسب مع الـ Border الخارجي
                                ),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/messi2.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            // زر الإضافة في المنتصف بين الصورة والنص
                            Positioned(
                              top:
                                  141, // تم ضبط المكان بدقة ليقع بالمنتصف تماماً
                              left: 0,
                              right: 0,
                              child: Center(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  padding: const EdgeInsets.all(
                                    3,
                                  ), // حواف بيضاء حول الزر الأزرق
                                  child: IconButton.filled(
                                    onPressed: () {},
                                    style: IconButton.styleFrom(
                                      backgroundColor: Colors.blue,
                                      foregroundColor: Colors.white,
                                      fixedSize: const Size(
                                        32,
                                        32,
                                      ), // حجم مناسب ومتناسق
                                    ),
                                    icon: const Icon(
                                      Icons.add_rounded,
                                      size: 22,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            // النص في أسفل الكارت تماماً
                            const Positioned(
                              bottom: 12,
                              left: 0,
                              right: 0,
                              child: Text(
                                'Create a Story',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),

                    // Second Story
                    SizedBox(
                      width: 140,
                      height: 230,
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              'assets/images/messi3.jpg',
                              width: 140,
                              height: 230,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              decoration: const BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                              child: const CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage(
                                  'assets/images/animal.jpg',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),

                    // Third Story
                    SizedBox(
                      width: 140,
                      height: 230,
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              'assets/images/lamin.png',
                              width: 140,
                              height: 230,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              decoration: const BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                              child: const CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage(
                                  'assets/images/messi.jpg',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),

                    // Fourth Story
                    SizedBox(
                      width: 140,
                      height: 230,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/images/picture 1.jpg',
                          width: 140,
                          height: 230,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(thickness: 3, color: AppColors.gray, height: 30),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(vertical: 12),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Padding(
                      padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage(
                              "assets/images/route1.jpg",
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: .start,
                              children: [
                                Text(
                                  "Route",
                                  style: TextStyle(
                                    fontWeight: .bold,
                                    fontSize: 15,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "8hr",
                                      style: TextStyle(
                                        color: AppColors.gray,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(width: 4),
                                    Icon(
                                      Icons.public,
                                      color: AppColors.gray,
                                      size: 14,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.more_horiz),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      height:
                          250, // تم ضبط الارتفاع ليكون مناسباً ويمنع حدوث الأوفر فلو
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/route2.jpg'),
                          fit: BoxFit
                              .cover, // هذا يضمن أن الصورة تمتد وتملأ المساحة بدون مشاكل
                        ),
                      ),
                    ),
                    SizedBox(height: 6),
                    Padding(
                      padding: EdgeInsetsGeometry.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      child: Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                padding: EdgeInsets
                                    .zero, // لإزالة الفراغات الافتراضية وتقريبهم أكثر
                                constraints: const BoxConstraints(),
                                icon: const Icon(
                                  Icons.favorite_border,
                                  size: 28,
                                  color: Colors.black87,
                                ), // أيقونة الـ Like/Love
                              ),
                              const SizedBox(width: 10),
                              IconButton(
                                onPressed: () {},
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(),
                                icon: Icon(
                                  Icons.chat_bubble,
                                  size: 28,
                                  color: AppColors.black,
                                ),
                              ),
                              const SizedBox(width: 10),
                              IconButton(
                                onPressed: () {},
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(),
                                icon: Icon(
                                  Icons.send_outlined,
                                  size: 28,
                                  color: AppColors.black,
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: () {},
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                            icon: Icon(
                              Icons.bookmark_border,
                              size: 28,
                              color: AppColors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
