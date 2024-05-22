import 'package:flutter/material.dart';
import 'package:profpilot/desktop-web/find-password.dart';
import 'package:profpilot/desktop-web/signup.dart';

void main() {
  runApp(const FigmaToCodeApp());
}

// Generated by: https://www.figma.com/community/plugin/842128343887142055/
class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color.fromARGB(255, 69, 131, 197),
      ),
      home: const Scaffold(
        body: LoginPage(),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: screenSize.width,
            height: screenSize.height,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(color: Color(0xFF444444)),
            child: Stack(
              children: [
                Positioned(
                  // 안녕하세요.👋
                  left: screenSize.width / 2 - 500,
                  top: 152,
                  child: const DefaultTextStyle(
                    style: TextStyle(
                      color: Color.fromARGB(255, 92, 145, 175),
                      fontSize: 48,
                      fontFamily: 'BMHANNAPro',
                      fontWeight: FontWeight.w400,
                      height: 0.02,
                      letterSpacing: -0.14,
                    ),
                    child: Text('안녕하세요. \u{1F44B}'),
                  ),
                ),
                Positioned(
                  // 프로프파일럿에 오신 걸 환영합니다.
                  left: screenSize.width / 2 - 500,
                  top: 221,
                  child: const DefaultTextStyle(
                    style: TextStyle(
                      color: Color.fromARGB(255, 216, 216, 216),
                      fontSize: 48,
                      fontFamily: 'BMHANNAPro',
                      fontWeight: FontWeight.w400,
                      height: 0.02,
                      letterSpacing: -0.14,
                    ),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '프로프파일럿에 오신 걸 환영합니다.',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // 프로프파일럿에 로그인
                  left: screenSize.width / 2 - 100,
                  top: 443,
                  child: const SizedBox(
                    width: 200,
                    height: 52,
                    child: DefaultTextStyle(
                      style: TextStyle(
                        color: Color(0xFF9F9F9F),
                        fontSize: 20,
                        fontFamily: 'BMHANNAPro',
                        fontWeight: FontWeight.w400,
                        height: 0.13,
                        letterSpacing: -0.14,
                      ),
                      child: Text('프로프파일럿에 로그인'),
                    ),
                  ),
                ),
                Positioned(
                  // 헤더
                  left: 0,
                  top: 0,
                  child: Container(
                    width: screenSize.width,
                    padding: const EdgeInsets.only(
                      top: 40,
                      left: 20,
                      right: 20,
                      bottom: 20,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.800000011920929),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        DefaultTextStyle(
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0.04,
                            letterSpacing: -0.12,
                          ),
                          child: Text('프로프파일럿 \u{2708}'),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  // 회원 가입, 비밀번호를 잊으셨나요?
                  left: screenSize.width / 2 - 267,
                  top: 746,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 61, vertical: 14),
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignupPage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent, // 배경색 투명
                            shadowColor: Colors.transparent, // 그림자 투명
                            minimumSize: const Size(100, 60),
                          ),
                          child: const DefaultTextStyle(
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'BMHANNAPro',
                              fontWeight: FontWeight.w400,
                              height: 0.04,
                              letterSpacing: -0.12,
                            ),
                            child: Text('회원가입'),
                          ),
                        ),
                        const SizedBox(width: 134),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FindPasswordPage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            minimumSize: const Size(100, 60),
                          ),
                          child: const DefaultTextStyle(
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'BMHANNAPro',
                              fontWeight: FontWeight.w400,
                              height: 0.04,
                              letterSpacing: -0.12,
                            ),
                            child: Text(
                              '비밀번호를 잃어버리셨습니까?',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  // 이메일
                  left: screenSize.width / 2 - 300,
                  top: 500,
                  child: Container(
                    width: 600,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x14000000),
                          blurRadius: 12,
                          offset: Offset(2, 4),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '이메일',
                              hintStyle: TextStyle(
                                color: Color(0xFF3D3D3D),
                                fontSize: 25,
                                fontFamily: 'BMHANNAPro',
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.14,
                              ),
                            ),
                            style: TextStyle(
                              color: Color(0xFF3D3D3D),
                              fontSize: 25,
                              fontFamily: 'BMHANNAPro',
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  // 비밀번호
                  left: screenSize.width / 2 - 300,
                  top: 623,
                  child: Container(
                    width: 600,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x14000000),
                          blurRadius: 12,
                          offset: Offset(2, 4),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '비밀번호',
                              hintStyle: TextStyle(
                                color: Color(0xFF3D3D3D),
                                fontSize: 25,
                                fontFamily: 'BMHANNAPro',
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.14,
                              ),
                            ),
                            style: TextStyle(
                              color: Color(0xFF3D3D3D),
                              fontSize: 25,
                              fontFamily: 'BMHANNAPro',
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
