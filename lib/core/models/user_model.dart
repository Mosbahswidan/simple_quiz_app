class UserModel {
  int?id;
  String? name;
  String? email;

 UserModel(this.id,this.name,this.email);
 UserModel.fromMao(Map<dynamic, dynamic> map){
   id=map['id'];
   email=map['email'];
   name=map['name'];
 }
  // QustionModel.fromMap(Map<dynamic, dynamic> map) {
  //   id=map['id'];
  //   qustion = map['qustion'];
  //   answer1 = map['answer1'];
  //   answer2 = map['answer2'];
  //   answer3 = map['answer3'];
  //   answer4 = map['answer4'];
  //   trueAnswer = map['true_answer'];
  // }
}