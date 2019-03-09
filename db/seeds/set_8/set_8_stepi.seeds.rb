faction = Faction.find(1)
common = CardRarity.find(1)
uncommon = CardRarity.find(2)
rare = CardRarity.find(3)
ultra = CardRarity.find(4)

creature = CardType.find_by(name: 'Существо')
magic = CardType.find_by(name: 'Заклинание')
equipment = CardType.find_by(name: 'Экипировка')
event = CardType.find_by(name: 'Событие')
hero = CardType.find_by(name: 'Герой')

Card.create(
  name: 'Авиатор Братства',
  card_url: '',
  cost: 5,
  attack: 5,
  health: 5,
  card_text: 'При гибели братства подготовьте Авиатора Братства (один раз за ход).',
  flavour_text: '"Брат за брата..."',
  rate: 3,
  dropped_from_booster: true,
  card_set_id: 8,
  factions: [faction],
  card_rarity: uncommon,
  card_type: creature,
  card_classes: CardClass.where(name: 'Братство'),
)

Card.create(
  name: 'Агент Братства',
  card_url: '',
  cost: 1,
  attack: 1,
  health: 1,
  card_text: "(1): Усовершенствуйте Агента Братства, при этом она получает +2 к удару и жизням.\n(5): Усовершенствуйте Агента Братства, при этом она получает +6 к удару и жизням.\n(9): Усовершенствуйте Агента Братства, при этом она получает +10 к удару и жизням.",
  flavour_text: '',
  rate: 3,
  dropped_from_booster: true,
  card_set_id: 8,
  factions: [faction],
  card_rarity: rare,
  card_type: creature,
  card_classes: CardClass.where(name: 'Братство'),
)

Card.create(
  name: 'Альхарис',
  card_url: '',
  cost: 7,
  attack: 10,
  health: 6,
  card_text: '',
  flavour_text: '"Сегодня магистры Тоа-Дана никого не примут, расходитесь!"',
  rate: 3,
  dropped_from_booster: true,
  card_set_id: 8,
  factions: [faction],
  card_rarity: common,
  card_type: creature,
  card_classes: CardClass.where(name: 'Тоа-Дан'),
)

Card.create(
  name: 'Антиграв',
  card_url: '',
  cost: 3,
  attack: 1,
  health: 1,
  card_text: 'Модуль. Вместо гибели этого существа – положите все его части в руку, кроме Антиграва, Антиграва положите на кладбище. ',
  flavour_text: '',
  rate: 3,
  dropped_from_booster: true,
  card_set_id: 8,
  factions: [faction],
  card_rarity: rare,
  card_type: creature,
  card_classes: CardClass.where(name: 'Механизм'),
)

Card.create(
  name: 'Артобстрел',
  card_url: '',
  cost: 4,
  card_text: "Каждый ваш орк имеет «Найм: Выстрел на 1 в персонажа противника по его выбору».\n(3)(Т): Выстрел на Х в персонажа противника по его выбору, где Х – количество ваших орков в игре.",
  flavour_text: '',
  rate: 3,
  dropped_from_booster: true,
  card_set_id: 8,
  factions: [faction],
  card_rarity: rare,
  card_type: event,
  card_classes: CardClass.where(name: 'Событие'),
)

Card.create(
  name: 'Гнев предков',
  card_url: '',
  cost: 4,
  card_text: 'Ранить на 3 персонажа противника по его выбору.',
  flavour_text: '"Духи вне себя от этих ваших "технологий"!"',
  rate: 3,
  dropped_from_booster: true,
  card_set_id: 8,
  factions: [faction],
  card_rarity: common,
  card_type: magic,
  card_classes: CardClass.where(name: 'Волшебство'),
)

Card.create(
  name: 'Гоблиноцикл',
  card_url: '',
  cost: 4,
  card_text: '(1): Усовершенствуйте Гоблиноцикл, при этом он получает Рывок.',
  flavour_text: "Авось, докатим.\nАвось, куда нужно.",
  rate: 3,
  dropped_from_booster: true,
  card_set_id: 8,
  factions: [faction],
  card_rarity: common,
  card_type: creature,
  card_classes: CardClass.where(name: 'Орк'),
)

Card.create(
  name: 'Жрица крови',
  card_url: '',
  cost: 3,
  attack: 2,
  health: 4,
  card_text: 'Пока у вас нет карт в руке, Жрица крови имеет +3 к удару.',
  flavour_text: '',
  rate: 3,
  dropped_from_booster: true,
  card_set_id: 8,
  factions: [faction],
  card_rarity: common,
  card_type: creature,
  card_classes: CardClass.where(name: 'Орк'),
)

Card.create(
  name: 'Изобретатель Братства',
  card_url: '',
  cost: 3,
  attack: 2,
  health: 4,
  card_text: 'Механизмы стоят на (1) дешевле.',
  flavour_text: '"Прогресс не остановить!"',
  rate: 3,
  dropped_from_booster: true,
  card_set_id: 8,
  factions: [faction],
  card_rarity: uncommon,
  card_type: creature,
  card_classes: CardClass.where(name: 'Братство'),
)

Card.create(
  name: 'Кулеврина орков',
  card_url: '',
  cost: 2,
  attack: 1,
  health: 3,
  card_text: "(Т): Выстрел на 1.\n(Т): Выстрел на 2 в персонажа противника по его выбору.",
  flavour_text: '"Жми, Фрося! Им от нас не уйти!"',
  rate: 3,
  dropped_from_booster: true,
  card_set_id: 8,
  factions: [faction],
  card_rarity: uncommon,
  card_type: creature,
  card_classes: CardClass.where(name: 'Орк'),
)

Card.create(
  name: 'Курдаш',
  card_url: '',
  cost: 4,
  attack: 5,
  health: 5,
  card_text: "Уникальность.\nЕсли ваш герой должен получить раны, вы можете уничтожить Курдаша, при этом предотвратить получение ран и уничтожить их источник, если это существо или карта поддержки.",
  flavour_text: '',
  rate: 3,
  dropped_from_booster: true,
  card_set_id: 8,
  factions: [faction],
  card_rarity: rare,
  card_type: creature,
  card_classes: CardClass.where(name: 'Орк'),
)

Card.create(
  name: 'Легионер',
  card_url: '',
  cost: 4,
  attack: 3,
  health: 3,
  card_text: 'Если вы разыграли трёх или более существ в этом ходу, Легионер стоит (0) до конца хода.',
  flavour_text: '"Где легион - там Аккения!"',
  rate: 3,
  dropped_from_booster: true,
  card_set_id: 8,
  factions: [faction],
  card_rarity: common,
  card_type: creature,
  card_classes: CardClass.where(name: 'Аккениец'),
)

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
  name: 'Мехазавр',
  card_url: '',
  cost: 8,
  attack: 8,
  health: 8,
  card_text: "(Х): Присоедините к Мехазавру механизм стоимостью (Х) (вы можете выбрать механизм противника).",
  flavour_text: '',
  rate: 3,
  dropped_from_booster: true,
  card_set_id: 8,
  factions: [faction],
  card_rarity: ultra,
  card_type: creature,
  card_classes: CardClass.where(name: 'Орк'),
)

Card.create(
  name: 'Оптический прицел',
  card_url: '',
  cost: 2,
  attack: 2,
  health: 2,
  card_text: "Модуль.\nНаправленный удар по существам с уязвимостью.",
  flavour_text: 'Слабейшие всегда становятся первой целью, когда меняется мировой порядок.',
  rate: 3,
  dropped_from_booster: true,
  card_set_id: 8,
  factions: [faction],
  card_rarity: common,
  card_type: creature,
  card_classes: CardClass.where(name: 'Механизм'),
)

Card.create(
  name: 'Орк-ветеран',
  card_url: '',
  cost: 3,
  attack: 3,
  health: 1,
  card_text: 'Если Орк-ветеран должен получить раны и не является механизмом, вместо этого усовершенствуйте его.',
  flavour_text: '',
  rate: 3,
  dropped_from_booster: true,
  card_set_id: 8,
  factions: [faction],
  card_rarity: common,
  card_type: creature,
  card_classes: CardClass.where(name: 'Орк'),
)
