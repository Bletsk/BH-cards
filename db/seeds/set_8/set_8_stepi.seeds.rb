faction = Faction.find(1)
common = Rarity.find(1)
uncommon = Rarity.find(2)
rare = Rarity.find(3)
ultra = Rarity.find(4)

creature = CardType.find_by(name: 'Существо')
magic = CardType.find_by(name: 'Заклинание')

Card.create(
  name: 'Махокрыл',
  card_url: '',
  cost: 1,
  attack: 2,
  health: 1,
  card_text: 'Найм: Выстрел на 1 в существо противника по его выбору.',
  flavour_text: '',
  rate: 3,
  dropped_from_booster: true,
  card_set_id: 8,
  factions: [faction],
  card_rarity: common,
  card_type: creature,
  card_classes: CardClass.where(name: 'Братство'),
)

Card.create(
  name: 'Гоблинская самоходка',
  card_url: '',
  cost: 2,
  attack: 3,
  health: 2,
  card_text: '(1): Усовершенствуйте Гоблинскую самоходку, при этом она получает Рывок.',
  flavour_text: '',
  rate: 3,
  dropped_from_booster: true,
  card_set_id: 8,
  factions: faction,
  card_rarity_id: 1,
  card_type_id: 1,
  card_classes: CardClass.where(id: 43),
)

Card.create(
  name: 'Оптический прицел',
  card_url: '',
  cost: 2,
  attack: 2,
  health: 2,
  card_text: 'Модуль. Направленный удар по существам с уязвимостью.',
  flavour_text: '',
  rate: 3,
  dropped_from_booster: true,
  card_set_id: 8,
  factions: faction,
  card_rarity_id: 1,
  card_type_id: 1,
  card_classes: CardClass.where(id: 37),
)

Card.create(
  name: 'Ратоборник клана',
  card_url: '',
  cost: 3,
  attack: 2,
  health: 4,
  card_text: 'Пока у вас нет карт в руке, Ратоборник клана имеет +3 к удару.',
  flavour_text: '',
  rate: 3,
  dropped_from_booster: true,
  card_set_id: 8,
  factions: faction,
  card_rarity_id: 1,
  card_type_id: 1,
  card_classes: CardClass.where(id: 41),
)

Card.create(
  name: 'Орк-ветеран',
  card_url: '',
  cost: 3,
  attack: 3,
  health: 1,
  card_text: 'Если Орк-ветеран должен получить раны и не является механизмом, вместо этого можете усовершенствовать его.',
  flavour_text: '',
  rate: 3,
  dropped_from_booster: true,
  card_set_id: 8,
  factions: faction,
  card_rarity_id: 1,
  card_type_id: 1,
  card_classes: CardClass.where(id: 41),
)

Card.create(
  name: 'Легионер',
  card_url: '',
  cost: 4,
  attack: 3,
  health: 3,
  card_text: 'Если вы разыграли трех и более существ в этом ходу, Легионер стоит (0) до конца хода.',
  flavour_text: '',
  rate: 3,
  dropped_from_booster: true,
  card_set_id: 8,
  factions: faction,
  card_rarity_id: 1,
  card_type_id: 1,
  card_classes: CardClass.where(id: 2),
)
