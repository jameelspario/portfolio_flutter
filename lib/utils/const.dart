import 'package:flutter/material.dart';

typedef OnItemTap = Function(dynamic item);

class Const {
  static Color colorHeader = Color.fromARGB(255, 44, 44, 44);

  static double windowWidth = 600.0;
}

class Drawables {
  static const images = "assets/images/";
  static const _png = ".png";
  static const _svg = ".svg";

  static const intro_img = "${images}android1$_png";
}

class Strings {
  static const title = "Jameel\'s Portfolio";
  static const intro1 = "Hi\nI'm Jameel\nMobile Developer";
  static const home = "Home";
  static const about = "About";
  static const skills = "Skills";
  static const projects = "Projects";
  static const contacts = "Contacts";
  static const contacts_me = "Contacts Me";

  static const flutter_tour = "Flutter Codes";


  static const about_text = '''
I am a dedicated Android (Native) and Flutter developer with over six years of experience in mobile app development, since the beginning my career in Android development in 2018, I have crafted high-performance, scalable and responsive applications, delivering seamless user experiences across both native and cross-platform environments. My expertise spans over 20 mobile applications across diverse industries, including cab booking, e-commerce, education, social media, and restaurant management.

I am proficient in developing robust, user-centered solutions tailored to specific client needs. I specialize in using a wide array of technologies, including Java, Kotlin, Flutter, and Android SDK, to create impactful applications that make a difference.

My core competencies include integrating RESTful APIs, managing Firebase integrations, implementing push notifications, and utilizing Jetpack libraries to enhance app functionality and performance. Additionally, I am experienced in Git version control and have a strong passion for exploring the latest advancements in Android and Flutter development. I enjoy research and development, constantly experimenting with new libraries and coding techniques to push the boundaries of what’s possible in mobile app development.

I am driven by a commitment to growth and innovation, and I am always eager to take on challenging projects that allow me to expand my technical skills and contribute to team success.
  ''';


}
