import 'dart:async';

import 'package:flutter/material.dart';
import 'QuestionsModel.dart';
//import 'package:vibration/vibration.dart';




class Questions extends StatefulWidget {
  Questions({Key key}) : super(key: key);

  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {

  List<QuestionModel> questions = [

    QuestionModel('What do you feel like to have in these days, Sweet or salty foods ?','All the sweets, chocolates & ice cream in the world' ,'Cheesy, salty and spicy foods', 'Tough to say,I like all!','q2'),
    QuestionModel('How’s The Complexion Of Your Skin?','My skin and face is glowing' ,'I look tired and have dull face','Not sure, I feel no difference','q1'),
    QuestionModel('When you look at mirror, what’s the shape of your belly ?' ,'Its big and sometimes feels like hanging' ,'Its not that big and points up or straight', 'Not sure which one it is','q1'),
    QuestionModel('Have You Been Experiencing Morning Sickness As A Pregnancy Symptom? ' ,'I vomit all day,nothing gets into my tummy','No or Mild morning sickness, thats all ', 'Not sure about that','q1'),
    QuestionModel('Have You Noticed A Change In Your Mood?', 'Feels sad and angry all the time', 'I am pretty chill','Tough to say, No Pattern','q2'),
    QuestionModel('Do you have a dark neck ?', 'Yes, Neck is darker than before', 'No change in color','I dont know','q1'),
    QuestionModel('Have your breast size increased since pregnancy?','Yes, very evident', 'No or very little','Not sure about that','q1'),
    QuestionModel('How about the babys legs, Have They Been Kicking Much?','Not at all or Very less', 'They’re kicking me all over','Too early to say','q1'),
    QuestionModel('Are you being forgetful during pregnancy','Yes, mostly', 'No Difference','Dont know','q2'),
    QuestionModel('Whats Babys heartbeat rate shown in your last scan ? ','Over 140 beats per minute', 'Under 140 beats per minute','I dont know','q2'),
  ];
  int questionIndex =0 ; 
  int boy = 0;
  int girl = 0;
  bool display = false;
  Map data = {};




  
  @override
  Widget build(BuildContext context) {
    if(boy != 0){display = true;}

  
    double dw = MediaQuery.of(context).size.width;
    data = ModalRoute.of(context).settings.arguments;
    print(data['english']);
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.pink,
        elevation: 0,
        title: Text("Ammi's Baby Gender Predictor",
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700
        ),),
      ),
      backgroundColor: Colors.pink[50],
      body: Center(


//Percetage Display        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                display == true ? Container(
                  margin: EdgeInsets.fromLTRB(68, 6, 4, 14),
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                decoration: BoxDecoration(
                  //color: Colors.blueAccent,
                  color: Colors.blue[300],
                  borderRadius: BorderRadius.circular(24)
                
                ),
                 // color: Colors.blue[300],
                  child:  Text(
                    "${boy*10}%",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w800
                    ),
                    )) : Container(), 
                    Spacer(),
               display == true ? Container(
                  margin: EdgeInsets.fromLTRB(6, 6, 68, 14),
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                decoration: BoxDecoration(
                  //color: Colors.blueAccent,
                  color: Colors.pink[300],
                  borderRadius: BorderRadius.circular(24)
                
                ),
                  child: Text(
                    "${girl*10}%",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w800
                    ),
                    )): Container(),
              ],
            ),
            SizedBox(height: 6,),

//Cercular progress indicator             
            Row(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 0, 19),
                    child: SizedBox(
    height: 150.0,
    width: 150.0,
    child: 
        CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(Colors.blue[300]),
        value: boy*0.1,
        backgroundColor: Colors.white,
        strokeWidth: 18.0)
    )
                  ),
                  Positioned(
                    right: 5,
                    top: 6,
                                      child: CircleAvatar(
                      backgroundImage: AssetImage('images/boy.png'),
                      radius: 70,
                    ),
                  )
                  ],
                                   
                ),
                Spacer(),
                Stack(
                  children: <Widget>[
              
                    Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 20, 19),
                    child: SizedBox(
    height: 150.0,
    width: 150.0,
    child: 
        CircularProgressIndicator(
        
        valueColor: AlwaysStoppedAnimation(Colors.pink[300]),
        value: girl*0.1,
        backgroundColor: Colors.white,
        strokeWidth: 18.0)
    )
                  ),
                  Positioned(
                    left: 5,
                    top: 6,
                                      child: CircleAvatar(
                      backgroundImage: AssetImage('images/girl.png'),
                      radius: 70,
                    ),
                  )
                  ],
                          
                ),
              ],
            ),



//FOr boy and girl text below image
Row(
        
              children: <Widget>[
                Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 40)),
                Container(
                  margin: EdgeInsets.fromLTRB(60, 0, 4, 14),
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                decoration: BoxDecoration(
                  //color: Colors.blueAccent,
                  color: Colors.blue[300],
                  borderRadius: BorderRadius.circular(24)
                
                ),
                 // color: Colors.blue[300],
                  child: Text(
                    "Boy",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w800
                    ),
                    )),
                    Spacer(),
                Container(
                  margin: EdgeInsets.fromLTRB(6, 0, 60, 14),
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                decoration: BoxDecoration(
                  //color: Colors.blueAccent,
                  color: Colors.pink[300],
                  borderRadius: BorderRadius.circular(24)
                
                ),
                  child: Text(
                    "Girl",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w800
                    ),
                    )),
              ],
            ),



Container(
  margin: EdgeInsets.fromLTRB(0, 18, 0, 0),
  child:   LinearProgressIndicator(

    value: questionIndex *0.1,
    backgroundColor: Colors.white,
    valueColor: AlwaysStoppedAnimation(Colors.pinkAccent),
  ),
),

//Main Question 
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Container(
             // height: dh*0.1,
              width: dw,
              margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
              color: Colors.pink[400],
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("${questionIndex+1})  ${questions[questionIndex].question}",
                textAlign: TextAlign.center,
                style: TextStyle(
                  
                  color: Colors.white,
                  fontSize: 24
                ),
                ),
              ),
              ),
            ),

///Answers             
            InkWell(
              onTap: () {
                   // print(questions[questionIndex].boyAnswer);
                      if(questions[questionIndex].boyAnswer == 'q1'){
                        setState(() {
                          boy++;
                        });
                      }
                      if(questions[questionIndex].boyAnswer == 'q2'){
                        setState(() {
                          girl++;
                        });
                      }
                    setState(() {
                      questionIndex++;
                    // if(questions[questionIndex].boyAnswer == 'q1'){boy++;}
                    });
                  },
                          child: Card(
                //color: Colors.pink,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)

                ),
                elevation: 8,
                margin: EdgeInsets.fromLTRB(8, 8, 8, 0),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(questions[questionIndex].q1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                    ),),
                        
                      ],
                    
                    ),
                ),
              ),
            ),
            SizedBox(height: 10,),
           InkWell(
             onTap: () {
                    //print('q2');
                    if(questions[questionIndex].boyAnswer == 'q1'){
                        setState(() {
                          girl++;
                        });
                      }
                      if(questions[questionIndex].boyAnswer == 'q2'){
                        setState(() {
                          boy++;
                        });
                      }
                     setState(() {
                       print(questionIndex+2);
                      
                      

                      questionIndex++;
                     if(questionIndex+1 == questions.length){Navigator.popAndPushNamed(context, '/result');}
                    });
                  },
                  
                        child: Card(
                //color: Colors.pink,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)

                ),
                elevation: 8,
                margin: EdgeInsets.fromLTRB(8, 8, 8, 0),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(questions[questionIndex].q2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                    ),),
                        
                      ],
                    
                    ),
                ),
              ),
           ),
           SizedBox(height: 10,),
            InkWell(
                onTap: () {
                    //print('q3');
                    
                     setState(() {
                      questionIndex++;
                     
                    });
                  },
                          child: Card(
                //color: Colors.pink,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)

                ),
                elevation: 8,
                margin: EdgeInsets.fromLTRB(8, 8, 8, 0),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(questions[questionIndex].q3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                    ),),
                        
                      ],
                    
                    ),
                ),
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}
