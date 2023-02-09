
import 'package:path/path.dart';
import 'package:my_app/views/screens/database_helper.dart';

class NewUserclass {
  final int? id;
  final String firstname;
  final String lastname;
  final String address;
  final String city;
  final String state;
  final int zip;
  final String counsler;
  final String school;
  final String degree;
  final String degreelevel;
  
  NewUserclass(
    {this. id,
      required this.firstname, 
      required this.lastname,
      required this.address,
      required this.city,
      required this.state,
      required this.zip,
      required this.counsler,
      required this.school,
      required this.degree,
      required this.degreelevel});
    
 NewUserclass.fromMap(Map<String, dynamic> res)
    : id = res["id"],
    firstname = res["firstname"],
    lastname = res["lastname"],
    address = res["address"],
    city = res["city"],
    state = res["state"],
    zip = res["zip"],
    counsler = res["counsler"],
    school = res["school"],
    degree = res["degree"],
    degreelevel = res["degreelevel"];

  Map<String,Object?> toMap(){
    return {'id':id,'firstname': firstname, 'lastname': lastname, 'address': address, 'city': city, 'state': state, 'zip': zip,
     'counsler': counsler, 'school': school, 'degree': degree, 'degreelevel': degreelevel};
  }
}
    

