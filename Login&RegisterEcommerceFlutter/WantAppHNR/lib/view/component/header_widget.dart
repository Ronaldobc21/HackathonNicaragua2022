import 'package:flutter/material.dart';

import '../../LoginAndRegister/app_colors.dart';
import '../../LoginAndRegister/app_styles.dart';

class HeaderWidget extends StatelessWidget {
  HeaderWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      child: SizedBox(
        height: 45,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 2),
                    child: Image(
                      image: AssetImage('assets/logo.png'),
                      height: 60,
                    ),
                  ),
                  SizedBox(
                    width: 26,
                  ),
                ],
              ),





              Row(
                children: [
                  Container(
                    height: 44,
                    width: size.width * 0.35,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: const BoxDecoration(
                      color: Color(0xFFEDEDF0),
                      borderRadius: BorderRadius.all(
                        Radius.circular(40),
                      ),
                    ),
                    child: TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        border: InputBorder.none,
                        suffixIcon: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              print('clear field');
                            },
                            child: const Icon(
                              Icons.close,
                              size: 17,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "login");
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xFF3C40FF),
                          ),
                        ),
                      ),
                    ),

                      child: Text('Iniciar Sesión',
                        style: ralewayStyle.copyWith(
                          fontSize: 12.0,
                          color: AppColors.mainBlueColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "añadir");
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          const RoundedRectangleBorder(
                            side: BorderSide(
                              color: Color(0xFF3C40FF),
                            ),
                          ),
                        ),
                      ),

                      child: Text('Vender Artículo',
                        style: ralewayStyle.copyWith(
                          fontSize: 12.0,
                          color: Color(0xFF3C40FF),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                  const SizedBox(
                    width: 10,
                  ),

                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xFF3C40FF),
                          ),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Carrito',
                      style: TextStyle(
                        color: Color(0xFF3C40FF),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),

                  const SizedBox(
                    width: 10,
                  ),
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/avatar.png'),
                  )
                ],
              )
            ],
          ),
      ),
    );
  }
}
