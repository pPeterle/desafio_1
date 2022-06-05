import 'package:desafio_1/app/home/models/owner.dart';
import 'package:desafio_1/app/home/models/sex.dart';

class Pet {
  final String name;
  final String breed;
  final String years;
  final String distance;
  final String image;
  final String location;
  final Sex sex;
  final Owner owner;

  Pet({
    required this.name,
    required this.breed,
    required this.owner,
    required this.years,
    required this.distance,
    required this.image,
    required this.location,
    required this.sex,
  });
}
