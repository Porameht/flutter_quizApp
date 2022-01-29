import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import './questions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Home(
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int number = 0;
  int score = 0;

  List<Questions> q = Questions.questionList;

  void showAlert (){

    Alert(
      style: AlertStyle(
        alertBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        overlayColor: Colors.black54,
        // is over lay click side popup ไม่หาย
        isOverlayTapDismiss: false,
        isCloseButton: true,
        animationType: AnimationType.grow
      ),
        context: context,
        title: "Congratulations",
        desc: "You got $score ouf of ${q.length}",
        buttons: [
          DialogButton(
            width: 150,
            radius: BorderRadius.circular(20),
            child: const Text(
              "Play Again",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              )
            ),
            onPressed: () {
              Navigator.pop(context);
              score = 0;
              setState(() {
                number = 0;
              });
            },
          ),
        ]


    ).show();

  }
  void bottomHanding(String yourAnswer){

    // print(yourAnswer);
    // print(123);

    if ( yourAnswer  == q[number].answer){
      score = score + 1;
    }
    if (number  + 1 >= q.length) {

      showAlert();

    } else {
      setState(() {
        number = number +1;
      });
    }

  }

  Widget answerBottom(String choice, String answer){
    return Container(
      margin:const EdgeInsets.symmetric(vertical: 5),
      child: OutlineButton(
        borderSide: const BorderSide(
          width: 2,
          color: Color(0xFF1c4568)
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        ),
        onPressed: ()=> bottomHanding(answer),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(vertical: 5),
          leading: CircleAvatar(
            backgroundColor: Colors.orange,
            child: Text(
              choice,
              style: const TextStyle(
                color: Color(0xff202848)
              ),
            ),
          ),
          title: Text(
              answer,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              letterSpacing: 1
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Color(0xFF202848),
      width: double.infinity,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Question : ${number +1} / ${q.length}",
                style: const TextStyle(
                  color: Colors.orange,
                  fontSize: 23,
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(
                height: 40,
                child: Divider(
                  color: Colors.white,
                  thickness: 0.5,
                ),
              ),
              Expanded(
                child: Text(
                    q[number].question,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300

                  ),
                ),
              ),
              Column(
                children: [
                  answerBottom("A",q[number].options[0]),
                  answerBottom("B",q[number].options[1]),
                  answerBottom("C",q[number].options[2]),
                  answerBottom("D",q[number].options[3]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
