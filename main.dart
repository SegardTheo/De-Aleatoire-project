import 'dart:math';

abstract class IDe {
  factory IDe(String type) {
    if (type == 'De') return De();
    throw 'Can\'t create $type.';
  }
  final _random = new Random();
  final List<int> faces = [1,2,3,4,5];
  int _valeurLance = 0;
  int get valeurLance => _valeurLance;

  void LancerDe();
}

class De implements IDe {
  final _random = new Random();
  final List<int> faces = [1,2,3,4,5, 6];
  int _valeurLance = 0;
  int get valeurLance => _valeurLance;

  De();

  void LancerDe()
  {
    _valeurLance = faces[_random.nextInt(faces.length)];
  }
}

void main()
{
  De de1 = De();
  De de2 = De();
  int compteur = 0;
  bool FinPartie = false;

  while(!FinPartie)
  {
    compteur++;

    de1.LancerDe();
    de2.LancerDe();

    print(de1.valeurLance.toString() + " " + de2.valeurLance.toString());

    if(de1.valeurLance == 6 && de2.valeurLance == 6)
    {
      FinPartie = true;
    }
  }

  print(compteur);
}