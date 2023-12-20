import 'package:tinder_clone/src/models/gender_model.dart';

GenderModel homemCis = GenderModel(
  subTitle: 'Homem cis',
  description:
      'Um homem cujo gênero está alinhado ao que recebeu ao nascimento.',
);

GenderModel homemIntersexual = GenderModel(
  subTitle: 'Homem intersexual',
  description:
      'Um homem que nasceu com uma ou mais variações nas caracteristicas sexuais que não se encaixam em ideias binárias de corpos masculinos ou femininos.',
);

GenderModel homemTrans = GenderModel(
  subTitle: 'Homem trans',
  description:
      'Um homem que é transgênero, e cujo gênero é diferente do sexo atribuido no nascimento.',
);

GenderModel transMasculine = GenderModel(
  subTitle: 'Transmasculine',
  description:
      'Uma pessoa que foi designada mulher ao nascer, mas se apresenta como masculino. Esta pessoa pode ou não se ver como homem ou um homem transgênero.',
);

GenderModel naoListado = GenderModel(
  subTitle: 'Não listado',
  description: 'Conta pra gente o que está faltando.',
);

List<GenderModel> listGenderMan = [
  homemCis,
  homemIntersexual,
  homemTrans,
  transMasculine,
  naoListado,
];

GenderModel mulherCis = GenderModel(
  subTitle: 'Mulher cis',
  description:
      'Uma mulher cujo gênero está alinhado ao que recebeu ao nascimento.',
);

GenderModel mulherIntersexual = GenderModel(
  subTitle: 'Mulher intersexual',
  description:
      'Uma mulher que nasceu com uma ou mais variações nas caracteristicas sexuais que não se encaixam em ideias binárias de corpos masculinos ou femininos.',
);

GenderModel mulherTrans = GenderModel(
  subTitle: 'Mulher trans',
  description:
      'Uma mulher que é transgênero e cujo gênero é diferente do sexo atribuido no nascimento.',
);

GenderModel transFeminine = GenderModel(
  subTitle: 'Transfeminine',
  description:
      'Uma pessoa que foi designada homem ao nascer, mas se apresenta como feminina. Esta pessoa pode ou não se ver como uma mulher ou uma mulher transgênero.',
);

GenderModel naoListadoF = GenderModel(
  subTitle: 'Não listado',
  description: 'Conta pra gente o que está faltando.',
);

List<GenderModel> listGenderWoman = [
  mulherCis,
  mulherIntersexual,
  mulherTrans,
  transFeminine,
  naoListadoF,
];

GenderModel agenero = GenderModel(
  subTitle: 'Agênero',
  description: 'Uma pessoa que não tem gênero.',
);

GenderModel androgino = GenderModel(
  subTitle: 'Andrógino',
  description:
      'uma pessoa que sente que seu gênero está entre "homem" e "mulher" e se sente masculina e feminina simultaneamente. Uma pessoa',
);

GenderModel androgeno = GenderModel(
  subTitle: 'Andrógeno',
  description: 'Uma pessoa que tem qualidades masculinas e femininas.',
);

GenderModel bigenero = GenderModel(
  subTitle: 'Bigênero',
  description:
      'Uma pessoa que tem dois ou mais gêneros (pode ser simultaneamente ou fluido).',
);

List<GenderModel> listGenderBinary = [
  agenero,
  androgino,
  androgeno,
  bigenero,
];

List<String> listTitleGender = [
  'Homem',
  'Mulher',
  'Além de binário',
];

List<List<GenderModel>> listGenderModels = [
  listGenderMan,
  listGenderWoman,
  listGenderBinary,
];

GenderModel heterossexual = GenderModel(
  subTitle: 'Heterossexual',
  description:
      'Alguém que se sente atraído excluisamente por pessoas do gênero oposto',
);

GenderModel gay = GenderModel(
  subTitle: 'Gay',
  description:
      'Um termo abrangente usado para descrever alguém que sente atração por pessoas do mesmo gênero',
);

GenderModel lesbica = GenderModel(
  subTitle: 'Lésbica',
  description:
      'Uma mulher que sente atração sexual, romântica ou emocional por outra mulher',
);

GenderModel bissexual = GenderModel(
  subTitle: 'Bissexual',
  description:
      'Alguém que pode pode sentir atração sexual, romântica ou emocional por pessoas de mais de um gênero',
);

List<GenderModel> listGenderSexualOrientation = [
  heterossexual,
  gay,
  lesbica,
  bissexual,
];

List<String> listLikeSee = [
  'Homens',
  'Mulheres',
  'Todos',
];
