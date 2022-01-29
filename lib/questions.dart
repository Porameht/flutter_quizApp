
class Questions {

  late String question;
  late List<String> options;
  late String answer;

  Questions({ required this.question, required this.options, required this.answer});

   static List<Questions> get questionList => [

    Questions(
        question: "เมืองหลวงของประเทศญี่ปุ่นคือเมืองใด?",
        options: ["เกียวโต", "โตเกียว", "โอซาก้า", "ฮอกไกโด"],
        answer: "โตเกียว"
    ),
    Questions(
        question: "โรคโลหิตจางเกิดจากการขาดธาตุอะไร?",
        options: ["วิตามิน", "ไขมัน", "คาร์โบไฮเดรต", "ธาตุเหล็ก"],
        answer: "ธาตุเหล็ก"
    ),
    Questions(
        question: "1 ไมล์เท่ากับกี่กิโลเมตร?",
        options: [
          "3.22 กิโลเมตร",
          "1.25 กิโลเมตร",
          "2.14 กิโลเมตร",
          "1.61 กิโลเมตร"
        ],
        answer: "1.61 กิโลเมตร"),
    Questions(
        question: "ประเทศใดในโลกที่มีประชากรมากที่สุด?",
        options: ["จีน", "รัสเซีย", "อินเดีย", "อเมริกา"],
        answer: "จีน"),
    Questions(
        question: "นกอะไรที่สามารถบินถอยหลังได้?",
        options: ["นกกีวี่", "นกเงือก", "ฮัมมิ่งเบิร์ด", "นกฮูก"],
        answer: "ฮัมมิ่งเบิร์ด"),
    Questions(
        question: "ขื่อใดคือชื่อของพริกที่เผ็ดที่สุดในโลก?",
        options: [
          "Carolina Reaper",
          "Red Savina Habanero",
          "Ghost Pepper",
          "Naga Viper"
        ],
        answer: "Carolina Reaper"),
    Questions(
        question: "ถั่วชนิดใดที่อยู่ใน Ferrero Rocher?",
        options: ["Walnut", "Hazelnut", "Almond", "Macadamia"],
        answer: "Hazelnut"),
    Questions(
        question: "ดาวเคราะห์ดวงใดที่อยู่ใกล้ดวงอาทิตย์ที่สุด?",
        options: ["Neptune", "Saturn", "Mercury", "Venus"],
        answer: "Mercury"),
  ];

}