import 'package:recicla_mais/model/discount_vouchers_model.dart';
import 'package:recicla_mais/model/news_tutorial_model.dart';

abstract class SettingsInfo {
  static List<String> settingsOptions = [
    'informações da conta',
    'segurança',
    'ajuda',
    'cadastrar como ponto de coleta',
    'sobre',
    'sair'
  ];

  static List<NewsTutorialModel> newsAndTutorials = [
    NewsTutorialModel(
      description: 'Reciclando da maneira correta',
      imageURL:
          'https://images.unsplash.com/photo-1611284446314-60a58ac0deb9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
    ),
    NewsTutorialModel(
      description: 'Como os problemas com a poluição prejudicam sua saúde',
      imageURL:
          'https://images.unsplash.com/photo-1613323115830-9a4edbd2d56d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
    ),
    NewsTutorialModel(
      description:
          'Porque os jovens europeus estão mobilizados pelas questões climáticas',
      imageURL:
          'https://images.unsplash.com/photo-1602501071216-86947682ebfd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
    ),
    NewsTutorialModel(
      description: 'Uma reflexão sobre a cidade e suas áreas verdes',
      imageURL:
          'https://images.unsplash.com/photo-1499856666482-0667da148d3b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1333&q=80',
    ),
  ];

  static List<String> materialsToCollect = [
    'papel e papelão',
    'plásticos',
    'sacolas plásticas',
    'tampas de garrafas',
    'latas de alumínio',
    'vidro',
    'embalagens PET',
    'metais',
    'potes de alimentos',
  ];

  static List<String> collectedMaterials = [
    'papel e papelão',
    'vidro',
    'latas de alumínio',
    'tampas de garrafas',
    'potes de alimnetos',
  ];

  static List<DiscountVouchersModel> vouchers = [
    DiscountVouchersModel(
      description: 'R\$ 10 de desconto em jogos acima de R\$ 35',
      imagePath: 'assets/steam.jpg',
    ),
    DiscountVouchersModel(
      description:
          '5% de desconto em produtos natura nas compras acima de R\$ 65',
      imagePath: 'assets/natura.jpg',
    ),
    DiscountVouchersModel(
      description: '5% de desconto em pedidos acima de R\$ 30',
      imagePath: 'assets/ifood.png',
    ),
    DiscountVouchersModel(
      description:
          'R\$ 20 de desconto em roupas da Renner nas compas acima de R\$ 100',
      imagePath: 'assets/renner.png',
    ),
  ];
}
