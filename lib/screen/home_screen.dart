import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('버튼'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
        child: Text('buttonstyle'),

        onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.black,
                  ),
                  foregroundColor:
                      MaterialStateProperty.resolveWith(
                          (Set<MaterialState> states){
                            if(states.contains(MaterialState.pressed)){
                              return Colors.white;
                            }
                            return Colors.red;
                          }
                      ),
            ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                // 메인 컬러
                primary: Colors.red,
                // 글자 및 애니메이션 색깔
                onPrimary: Colors.black,
                // 그림자 색깔
                shadowColor: Colors.green,
                elevation: 10.0,
                //버튼의 텍스트 스타일
                textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                ),
                // 안쪽 크기
                padding: EdgeInsets.all(32.0),
                //테두리의 크기
                side: BorderSide(
                  color: Colors.black,
                  width: 4.0,
                ),
              ),
              child: Text('ElevatedButton'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                //outlinebutton은 글자와 애니메이션 효과가 적용됨
                primary: Colors.green,
              ),
              child: Text('OutlinedButton'),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                // 글자와 애니메이션 효과가 적용됨
                primary: Colors.blue,
              ),
              child: Text('TextButton'),
            ),
          ],
        ),
      ),
    );
  }
}
