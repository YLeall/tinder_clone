import 'package:tinder_clone/src/models/gender_model.dart';

GenderModel homemCis = GenderModel(
  subTitle: 'Homem cis',
  description:
      'Um homem cujo gênero está alinhado ao que recebeu ao nascimento.',
);

GenderModel homemIntersexual = GenderModel(
  subTitle: 'Homem intersexual',
  description:
      'Um homem que nasceu com uma ou mais variações nas caracteristicas sexuais que não se encaixam em ideias binárias de',
);

GenderModel homemTrans = GenderModel(
  subTitle: 'Homem trans',
  description: 'Um homem que é transgênero e cujo',
);

GenderModel transMasculine = GenderModel(
  subTitle: 'Transmasculine',
  description: 'Teste',
);

GenderModel naoListado = GenderModel(
  subTitle: 'Não listado',
  description: 'Hello Mundo',
);

List<GenderModel> listGenderHomem = [
  homemCis,
  homemIntersexual,
  homemTrans,
  transMasculine,
  naoListado,
];

