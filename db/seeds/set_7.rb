p "[Расцвет Технологий]"
set = CardSet.create(name: "Расцвет Технологий")

p "Степени редкости"
common = CardRarity.find_by(name: "common")
uncommon = CardRarity.find_by(name: "uncommon")
rare = CardRarity.find_by(name: "rare")
ultra = CardRarity.find_by(name: "ultra")

p "Стихии"
boloto = Element.find_by(name: "Болото")
les = Element.find_by(name: "Лес")
tma = Element.find_by(name: "Тьма")
stepi = Element.find_by(name: "Степи")
gori = Element.find_by(name: "Горы")
neutral = Element.find_by(name: "Нейтрал")

p "Типы карт"
creature = CardType.find_by(name: "Существо")
hero = CardType.find_by(name: "Герой")
spell = CardType.find_by(name: "Заклинание")
weapon = CardType.find_by(name: "Оружие")
armor = CardType.find_by(name: "Броня")
amulet = CardType.find_by(name: "Амулет")
event = CardType.find_by(name: "Событие")

p "Классы карт"
mech = CardClass.find_by(name: "Механизм")
action = CardClass.find_by(name: "Действие")
mercenary = CardClass.find_by(name: "Наемник")
order = CardClass.find_by(name: "Приказ")
orc = CardClass.find_by(name: "Орк")
ritual = CardClass.find_by(name: "Ритуал")
akkenian = CardClass.find_by(name: "Аккениец")
event_event = CardClass.find_by(name: "Событие")
centaur = CardClass.find_by(name: "Кентавр")
brotherhood = CardClass.find_by(name: "Братство")
beast = CardClass.find_by(name: "Зверь")
sorcery = CardClass.find_by(name: "Волшебство")
fairy = CardClass.find_by(name: "Фея")
forestkeeper = CardClass.find_by(name: "Страж леса")
land = CardClass.find_by(name: "Местность")
ent = CardClass.find_by(name: "Энт")
elf = CardClass.find_by(name: "Эльф")
giant = CardClass.find_by(name: "Великан")
potion = CardClass.find_by(name: "Зелье")
sphere = CardClass.find_by(name: "Сфера")
krongchild = CardClass.find_by(name: "Дитя Кронга")
artifact = CardClass.find_by(name: "Артефакт")
troll = CardClass.find_by(name: "Тролль")
podzemnik = CardClass.find_by(name: "Подземник")
arhaalit = CardClass.find_by(name: "Архаалит")
akvanit = CardClass.find_by(name: "Акванит")
undead = CardClass.find_by(name: "Нежить")
toadan = CardClass.find_by(name: "Тоа-дан")
golem = CardClass.find_by(name: "Голем")
worg = CardClass.find_by(name: "Ворг")
gnom = CardClass.find_by(name: "Гном")
yordling = CardClass.find_by(name: "Йордлинг")
linung = CardClass.find_by(name: "Линунг")

Card.create(
	name: "Бардак",
	card_rarity: ultra,
	card_url: "",
	card_type: spell,
	dropped_from_booster: true,
	card_set: set,
	elements: [stepi],
	card_classes: [action],
	rate: 3,
	cost: 5,
	card_text: "Выберите Х ваших существ и Х существ противника. Подготовьте этих существ, они получают Рывок, затем обменяйтесь контролем над ними до конца хода."
)
Card.create(
	name: "Боевой голем",
	card_rarity: rare,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [stepi],
	card_classes: [mech],
	rate: 4,
	cost: 2,
	attack: 4,
	health: 2,
	card_text: "Когда наносит раны ударом по герою, можете уничтожить Боевого голема, при этом ранить героя противника по силе удара Боевого голема."
)
Card.create(
	name: "Вождь варваров",
	card_rarity: common,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [stepi],
	card_classes: [mercenary],
	rate: 2,
	cost: 2,
	attack: 4,
	health: 3,
	card_text: "Найм: сбросьте карту, иначе уничтожьте Вождя варваров.",
	flavour_text: "Победа или смерть!"
)
Card.create(
	name: "Все на одного!",
	card_rarity: uncommon,
	card_url: "",
	card_type: spell,
	dropped_from_booster: true,
	card_set: set,
	elements: [stepi],
	card_classes: [order],
	rate: 4,
	cost: 4,
	card_text: "Выберите существо противника. До начала вашего следующего хода оно не наносит ран, а существа имеют Направленный удар по этому существу.",
	flavour_text: ""
)
Card.create(
	name: "Вызываем подкрепления!",
	card_rarity: common,
	card_url: "",
	card_type: spell,
	dropped_from_booster: true,
	card_set: set,
	elements: [stepi],
	card_classes: [order],
	rate: 2,
	cost: 6,
	card_text: "Вызовите до 3 существ стоимостью (1) или менее.",
	flavour_text: "Передайте командующему - нам срочно нужны подкрепления на передовой!"
)
Card.create(
	name: "Говорящий со змеями",
	card_rarity: uncommon,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [stepi],
	card_classes: [orc],
	rate: 4,
	cost: 7,
	attack: 7,
	health: 7,
	card_text: "Найм: Вызовите до двух существ стоимостью (1) или менее.",
	flavour_text: "Что ты скажешь, глядя в глаза с-с-своей с-с-смерти?"
)
Card.create(
	name: "Дирр-прыгун",
	card_rarity: common,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [stepi],
	card_classes: [mech],
	rate: 3,
	cost: 1,
	attack: 2,
	health: 1,
	card_text: "Модуль. Гибель: Ранить героя противника на 1.",
	flavour_text: ""
)
Card.create(
	name: "За знаменем!",
	card_rarity: common,
	card_url: "",
	card_type: spell,
	dropped_from_booster: true,
	card_set: set,
	elements: [stepi],
	card_classes: [order],
	rate: 2,
	cost: 1,
	card_text: "Ваши существа получают +1 к удару до конца хода.",
	flavour_text: "Когда ваше войско собирается вокруг этого флага, его переполняют новые силы, а боевой дух взлетает до небес."
)
Card.create(
	name: "Испытатель",
	card_rarity: uncommon,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [stepi],
	card_classes: [mech],
	rate: 4,
	cost: 5,
	attack: 4,
	health: 6,
	card_text: "Сбросьте карту: Удвойте силу удара Испытателя до конца хода (1 раз за ход).",
	flavour_text: ""
)
Card.create(
	name: "Клинки берсерка",
	card_rarity: uncommon,
	card_url: "",
	card_type: weapon,
	dropped_from_booster: true,
	card_set: set,
	elements: [stepi],
	rate: 3,
	cost: 2,
	card_text: "(3): Ваши существа получают Направленный удар по существу противника до конца хода.",
	flavour_text: ""
)
Card.create(
	name: "Конструкция: разоритель",
	card_rarity: common,
	card_url: "",
	card_type: spell,
	dropped_from_booster: true,
	card_set: set,
	elements: [stepi],
	card_classes: [ritual],
	rate: 2,
	cost: 4,
	card_text: "Выберите два раза одно из: - Создайте Модуль атаки. - Создайте Модуль подвижности",
	flavour_text: ""
)
Card.create(
	name: "Легат Аккении",
	card_rarity: common,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [stepi],
	card_classes: [akkenian],
	rate: 2,
	cost: 1,
	attack: 3,
	health: 1,
	card_text: "Орда.",
	flavour_text: "Военная служба в Аккении дает возможность проявить себя каждому: от бедняков до наследных правителей."
)
Card.create(
	name: "Лучница Аккении",
	card_rarity: common,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [stepi],
	card_classes: [akkenian],
	rate: 3,
	cost: 2,
	attack: 1,
	health: 2,
	card_text: "Орда. Найм: Выстрел на 2, если у вас в руке меньше карт, чем у противника.",
	flavour_text: ""
)
Card.create(
	name: "Мехокраб",
	card_rarity: common,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [stepi],
	card_classes: [mech],
	rate: 3,
	cost: 8,
	attack: 9,
	health: 7,
	card_text: "",
	flavour_text: "Один искусный пилот и его боевая машина могут стоить целой армии."
)
Card.create(
	name: "На таран",
	card_rarity: uncommon,
	card_url: "",
	card_type: spell,
	dropped_from_booster: true,
	card_set: set,
	elements: [stepi],
	card_classes: [action],
	rate: 3,
	cost: 3,
	card_text: "Уничтожьте ваш механизм. Ранить всех существ на Х, где Х - сила удара этого механизма.",
	flavour_text: "Птичку жалко!"
)
Card.create(
	name: "Не покладая рук",
	card_rarity: rare,
	card_url: "",
	card_type: event,
	dropped_from_booster: true,
	card_set: set,
	elements: [stepi],
	card_classes: [event_event],
	rate: 2,
	cost: 3,
	card_text: "(Х), сбросьте Х карт: Выберите Х раз одно из: - Создайте Модуль атаки; - Создайте Модуль подвижности.",
	flavour_text: ""
)
Card.create(
	name: "Неудержимый",
	card_rarity: common,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [stepi],
	card_classes: [centaur],
	rate: 3,
	cost: 4,
	attack: 4,
	health: 4,
	card_text: "Каджый раз, когда вы сбрасываете карты, Неудержимый получает +2 к удару за каждую сброшенную карту.",
	flavour_text: ""
)
Card.create(
	name: "Ополчение Братства",
	card_rarity: common,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [stepi],
	card_classes: [brotherhood],
	rate: 4,
	cost: 5,
	attack: 6,
	health: 4,
	card_text: "Когда ваш механизм наносит раны герою, подготовьте Братство (один раз за ход).",
	flavour_text: ""
)
Card.create(
	name: "Песчаный лев",
	card_rarity: common,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [stepi],
	card_classes: [beast],
	rate: 3,
	cost: 2,
	attack: 5,
	health: 1,
	card_text: "",
	flavour_text: "Клыки остры, реакция мгновенна. Звериный рык несется над песком. И жертве не найти спасенья, Когда выходит на охоту он."
)
Card.create(
	name: "Порождение Пустоши",
	card_rarity: uncommon,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [stepi],
	card_classes: [mech],
	rate: 1,
	cost: 1,
	attack: 0,
	health: 1,
	card_text: "Орда. Гибель: Поиск до двух Порождений Пустоши.",
	flavour_text: "- Фу, механическая крыса! Даже странно, что она ничего еще не стащила."
)
Card.create(
	name: "Послушник Братства",
	card_rarity: uncommon,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [stepi],
	card_classes: [brotherhood],
	rate: 3,
	cost: 3,
	attack: 1,
	health: 4,
	card_text: "Когда ваш механизм погибает, Послушник Братства получает +3 к удару и Первый удар до конца хода.",
	flavour_text: ""
)
Card.create(
	name: "Поток энергии",
	card_rarity: common,
	card_url: "",
	card_type: spell,
	dropped_from_booster: true,
	card_set: set,
	elements: [stepi],
	card_classes: [sorcery],
	rate: 2,
	cost: 1,
	card_text: "Ранить персонажа на 2.",
	flavour_text: "Любая достаточно развитая технология неотличима от магии."
)
Card.create(
	name: "Прототип SU-27",
	card_rarity: ultra,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [stepi],
	card_classes: [artifact],
	rate: 5,
	cost: 2,
	attack: 0,
	health: 10,
	card_text: "Не может атаковать. Не может выступать защитником. Гибель: Ранить каждого персонажа противника на Х, где Х - количество ран на Прототипе SU-27. (Т): Ранить Прототип SU-27 на 1.",
	flavour_text: ""
)
Card.create(
	name: "Разоритель",
	card_rarity: rare,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [stepi],
	card_classes: [mech],
	rate: 4,
	cost: 3,
	attack: 3,
	health: 2,
	card_text: "Модуль. Опыт в атаке. Гибель: Создайте Модуль атаки или Модуль подвижности.",
	flavour_text: ""
)
Card.create(
	name: "Самоход",
	card_rarity: common,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [stepi],
	card_classes: [mech],
	rate: 3,
	cost: 3,
	attack: 3,
	health: 3,
	card_text: "Рывок (может действовать и атаковать в тот же ход, когда появился под контролем игрока).",
	flavour_text: "Разозлишь быка - Попадешь на рога!"
)
Card.create(
	name: "Техномедитация",
	card_rarity: rare,
	card_url: "",
	card_type: spell,
	dropped_from_booster: true,
	card_set: set,
	elements: [stepi],
	card_classes: [ritual],
	rate: 5,
	cost: 2,
	card_text: "Берите карты, пока у вас в руке не будет столько же карт, сколько у противника. Ранить каждого героя на Х, где Х - количество карт, взятых таким образом.",
	flavour_text: ""
)
Card.create(
	name: "Фузилер Братства",
	card_rarity: rare,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [stepi],
	card_classes: [brotherhood],
	rate: 4,
	cost: 3,
	attack: 3,
	health: 4,
	card_text: "(Т): Выстрел на 4; Оглушите Фузилера Братства",
	flavour_text: "Перед выстрелом неплохо бы подготовиться."
)
Card.create(
	name: "Эйден",
	card_rarity: rare,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [stepi],
	card_classes: [toadan],
	rate: 2,
	cost: 8,
	attack: 7,
	health: 7,
	card_text: "Стоит на (1) дороже за каждую карту у вас в руке. Стоит на (1) дешевле за каждое ваше существо.",
	flavour_text: ""
)
Card.create(
	name: "Алмазный голем",
	card_rarity: common,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [gori],
	card_classes: [golem],
	rate: 3,
	cost: 8,
	attack: 8,
	health: 8,
	card_text: "Не может быть оглушен. Опыт в атаке.",
	flavour_text: "Алмазы устойчивы к большинству внешних воздействий, а значит представляют собой подходящий материал для големов."
)
Card.create(
	name: "Бронеход",
	card_rarity: rare,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [gori],
	card_classes: [mech],
	rate: 4,
	cost: 3,
	attack: 1,
	health: 4,
	card_text: "Модуль. Броня 1. Опыт в атаке. Гибель: Создайте Защитный модуль или Модуль подвижности.",
	flavour_text: ""
)
Card.create(
	name: "Гару",
	card_rarity: rare,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [gori],
	card_classes: [worg],
	rate: 5,
	cost: 4,
	attack: 4,
	health: 5,
	card_text: "(1): Покажите верхнюю карту вашей колоды; если это существо, Гару получает Броню 2 до конца хода; иначе можете ранить существо на 2.",
	flavour_text: ""
)
Card.create(
	name: "Гном-разведчик",
	card_rarity: common,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [gori],
	card_classes: [gnom],
	rate: 4,
	cost: 3,
	attack: 5,
	health: 3,
	card_text: "Каждый раз, когда Гном-разведчик наносит раны герою, вы можете посмотреть верхнюю карту любой колоды.",
	flavour_text: "Что это у нас тут?"
)
Card.create(
	name: "Гремлинская громыхалка",
	card_rarity: common,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [gori],
	card_classes: [mech],
	rate: 4,
	cost: 5,
	attack: 6,
	health: 6,
	card_text: "",
	flavour_text: "Вряд ли можно сказать, что гремлины в полной мере освоили механизмы. Впрочем, все, что плющит, колошматит, рубит и вообще разрушает, им по нраву."
)
Card.create(
	name: "Гримнар",
	card_rarity: common,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [gori],
	card_classes: [yordling],
	rate: 3,
	cost: 2,
	attack: 2,
	health: 3,
	card_text: "+2 к удару по оглушенным существам.",
	flavour_text: "Добить врага в бою, пока он беспомощен - суровая необходимость, но никак не подлость."
)
Card.create(
	name: "Дитя Йара",
	card_rarity: uncommon,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [gori],
	card_classes: [worg],
	rate: 3,
	cost: 4,
	attack: 5,
	health: 4,
	card_text: "Найм: Назовите карту и покажите верхнюю карт вашей колоды; если вы показали названную карту, положите ее в руку.",
	flavour_text: "Кто таится за поворотом?"
)
Card.create(
	name: "Золотой трон",
	card_rarity: rare,
	card_url: "",
	card_type: event,
	dropped_from_booster: true,
	card_set: set,
	elements: [gori],
	card_classes: [land],
	rate: 4,
	cost: 3,
	card_text: "(1)(Т): Покажите верхнюю карту вашей колоды; если это механизм, создайте Модуль подвижности или Защитный модуль; иначе вы можете положить эту карту под низ колоды и подготовить Золотой трон.",
	flavour_text: ""
)
Card.create(
	name: "Как на ладони",
	card_rarity: uncommon,
	card_url: "",
	card_type: spell,
	dropped_from_booster: true,
	card_set: set,
	elements: [gori],
	card_classes: [action],
	rate: 3,
	cost: 1,
	card_text: "Возьмите две карты. Положите карту из руки на верх колоды.",
	flavour_text: "С высоты птичьего полета вести разведку гораздо удобнее."
)
Card.create(
	name: "Конструкция: Бронеход",
	card_rarity: common,
	card_url: "",
	card_type: spell,
	dropped_from_booster: true,
	card_set: set,
	elements: [gori],
	card_classes: [ritual],
	rate: 2,
	cost: 4,
	card_text: "Выберите два раза одно из: - Создайте Модуль подвижности. - Создайте Защитный модуль.",
	flavour_text: ""
)
Card.create(
	name: "Мразень",
	card_rarity: rare,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [gori],
	card_classes: [giant],
	rate: 5,
	cost: 7,
	attack: 8,
	health: 8,
	card_text: "Найм: Оглушите до двух существ.",
	flavour_text: "Огромная сосулька вылетела из бушующей метели и свалила всадника вместе с барсом."
)
Card.create(
	name: "Застать врасплох",
	card_rarity: common,
	card_url: "",
	card_type: spell,
	dropped_from_booster: true,
	card_set: set,
	elements: [gori],
	card_classes: [action],
	rate: 2,
	cost: 2,
	card_text: "Каждое ваше существо до конца хода получает 'при атаке - оглушите атакованное существо'.",
	flavour_text: ""
)
Card.create(
	name: "Оборотень",
	card_rarity: common,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [gori],
	card_classes: [worg],
	rate: 3,
	cost: 3,
	attack: 3,
	health: 3,
	card_text: "Гибель: Вы можете положить Оборотня на верх колоды вместо кладбища.",
	flavour_text: "Недобитые оборотни часто убегают зализывать раны."
)
Card.create(
	name: "Парализатор",
	card_rarity: uncommon,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [gori],
	card_classes: [mech],
	rate: 2,
	cost: 2,
	attack: 2,
	health: 1,
	card_text: "Модуль. При ударе по существу поглушите это существо.",
	flavour_text: ""
)
Card.create(
	name: "Паролет",
	card_rarity: ultra,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [gori],
	card_classes: [mech],
	rate: 5,
	cost: 6,
	attack: 3,
	health: 3,
	card_text: "Найм: Прикрепите к Паролету любое число ваших механизмом (как если бы они имели способность Модуль и только что вошли в игру), затем вы можете ранить существо на Х, где Х - сила удара Паролета.",
	flavour_text: ""
)
Card.create(
	name: "Подавление",
	card_rarity: uncommon,
	card_url: "",
	card_type: spell,
	dropped_from_booster: true,
	card_set: set,
	elements: [gori],
	card_classes: [action],
	rate: 2,
	cost: 9,
	card_text: "Противник теряет (3)",
	flavour_text: "Создайте Модуль подвижности и Защитный модуль."
)
Card.create(
	name: "Подгорный крот",
	card_rarity: rare,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [gori],
	card_classes: [beast],
	rate: 3,
	cost: 1,
	attack: 2,
	health: 1,
	card_text: "Уникальность. Когда вы используете Поиск, вы можете заплатить (1), при этом вызовите Подгорного крота. Гибель: Вы можете замешать Подгорного крота в колоду вместо кладбища.",
	flavour_text: ""
)
Card.create(
	name: "Познание эфира",
	card_rarity: uncommon,
	card_url: "",
	card_type: spell,
	dropped_from_booster: true,
	card_set: set,
	elements: [gori],
	card_classes: [ritual],
	rate: 2,
	cost: 3,
	card_text: "Поиск до двух заклинаний стоимостью (1).",
	flavour_text: "Порой в причудливых течениях эфира можно разглядеть небольшие штрихи грядущего, что сложатся позже в цельную картину."
)
Card.create(
	name: "Призрачные оковы",
	card_rarity: uncommon,
	card_url: "",
	card_type: spell,
	dropped_from_booster: true,
	card_set: set,
	elements: [gori],
	card_classes: [sorcery],
	rate: 3,
	cost: 2,
	card_text: "Выберите существо. Если оно оглушено, уничтожьте его, иначе оглушите его.",
	flavour_text: "Скованные одной цепью, Связанные одной целью."
)
Card.create(
	name: "Прорицание воргов",
	card_rarity: rare,
	card_url: "",
	card_type: spell,
	dropped_from_booster: true,
	card_set: set,
	elements: [gori],
	card_classes: [ritual],
	rate: 4,
	cost: -1,
	card_text: "Посмотрите Х верхних карт вашей колоды; положите их обратно в любом порядке. Возьмите карту.",
	flavour_text: "Найрунг открыл мне глаза, теперь я вижу все."
)
Card.create(
	name: "Раскат грома",
	card_rarity: common,
	card_url: "",
	card_type: spell,
	dropped_from_booster: true,
	card_set: set,
	elements: [gori],
	card_classes: [sorcery],
	rate: 3,
	cost: 1,
	card_text: "Ранить существо на 3.",
	flavour_text: "Раскаты грома дробят на части терзаемые бурей небеса."
)
Card.create(
	name: "Расколошматить",
	card_rarity: common,
	card_url: "",
	card_type: spell,
	dropped_from_booster: true,
	card_set: set,
	elements: [gori],
	card_classes: [action],
	rate: 4,
	cost: 4,
	card_text: "Ранить существо на Х, где Х - его стоимость (стоимость составного механизма равна сумме стоимостей его частей).",
	flavour_text: ""
)
Card.create(
	name: 'Реактор "Ярость Клана"',
	card_rarity: common,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [gori],
	card_classes: [mech],
	rate: 2,
	cost: 1,
	attack: 2,
	health: 2,
	card_text: "Модуль. Бешенство (это существо атакует ударом при первой возможности).",
	flavour_text: ""
)
Card.create(
	name: "Снежный барс",
	card_rarity: common,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [gori],
	card_classes: [beast],
	rate: 2,
	cost: 1,
	attack: 1,
	health: 2,
	card_text: "(1): Снежный барс получает +2 к удару до начала вашего следующего хода (один раз за ход).",
	flavour_text: ""
)
Card.create(
	name: "Удар током",
	card_rarity: common,
	card_url: "",
	card_type: spell,
	dropped_from_booster: true,
	card_set: set,
	elements: [gori],
	card_classes: [sorcery],
	rate: 2,
	cost: 1,
	card_text: "Ранить каждое существо на 1.",
	flavour_text: "Разряд молнии перескакивал по доспехам воинов, словно ослепительная белая змея."
)
Card.create(
	name: "Цверг-колдун",
	card_rarity: uncommon,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [gori],
	card_classes: [gnom],
	rate: 3,
	cost: 3,
	attack: 3,
	health: 4,
	card_text: "Когда наносит раны ударом по герою, положите с кладбища в руку заклинание стоимостью (1).",
	flavour_text: ""
)
Card.create(
	name: "Эйвдалль",
	card_rarity: common,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [gori],
	card_classes: [linung],
	rate: 4,
	cost: 4,
	attack: 3,
	health: 2,
	card_text: "Выберите существо противника; вы можете показать верхнюю карту вашей колоды, при этом ранить это существо на стоимость показанной карты.",
	flavour_text: ""
)
Card.create(
	name: "Эфирный шторм",
	card_rarity: ultra,
	card_url: "",
	card_type: spell,
	dropped_from_booster: true,
	card_set: set,
	elements: [gori],
	card_classes: [ritual],
	rate: 4,
	cost: 7,
	card_text: "Положите всех существ на верх колоды владельца в порядке, выбранном их владельцами.",
	flavour_text: "Целое войско растворилось в вихре бушующего эфира."
)
Card.create(
	name: "Акрида",
	card_rarity: common,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [les],
	card_classes: [mech],
	rate: 4,
	cost: 6,
	attack: 6,
	health: 7,
	card_text: "",
	flavour_text: "Технологии эльфов зачастую неразрывно связаны с живыми носителями."
)
Card.create(
	name: "Биореактор",
	card_rarity: rare,
	card_url: "",
	card_type: event,
	dropped_from_booster: true,
	card_set: set,
	elements: [les],
	card_classes: [land],
	rate: 5,
	cost: 4,
	card_text: 'Ваши существа, не являющиеся созданными, имеют: "Гибель: Создайте Защитный модуль или Модуль поддержки".',
	flavour_text: "Великий цикл жизни приобрел несколько иное значение."
)
Card.create(
	name: "Броневые пластины",
	card_rarity: common,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [les],
	card_classes: [mech],
	rate: 3,
	cost: 3,
	attack: 1,
	health: 5,
	card_text: "Модуль. Опыт в защите (эта карта не закрывается, когда выступает защитником).",
	flavour_text: ""
)
Card.create(
	name: "Волна исцеления",
	card_rarity: rare,
	card_url: "",
	card_type: spell,
	dropped_from_booster: true,
	card_set: set,
	elements: [les],
	card_classes: [ritual],
	rate: 4,
	cost: 3,
	card_text: "Излечите каждого вашего персонажа на 1. Создайте защитный модуль или Модуль поддержки за каждого излеченного персонажа (каждого персонажа, с которого сняли раны).",
	flavour_text: ""
)
Card.create(
	name: "Заслуженный отдых",
	card_rarity: common,
	card_url: "",
	card_type: spell,
	dropped_from_booster: true,
	card_set: set,
	elements: [les],
	card_classes: [action],
	rate: 2,
	cost: 2,
	card_text: "Излечите персонажа на 3, подготовьте его.",
	flavour_text: "После подвигов так и тянет прилечь..."
)
Card.create(
	name: "Идентификация фей",
	card_rarity: common,
	card_url: "",
	card_type: spell,
	dropped_from_booster: true,
	card_set: set,
	elements: [les],
	card_classes: [action],
	rate: 2,
	cost: 2,
	card_text: "Существо получает +4 к удару до конца хода.",
	flavour_text: "Феи довольно дружелюбны и могут одарить случайного путника дарами."
)
Card.create(
	name: "Исцеляющая",
	card_rarity: uncommon,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [les],
	card_classes: [elf],
	rate: 3,
	cost: 5,
	attack: 5,
	health: 6,
	card_text: "В начале хода противника излечите вашего героя на Х, где Х - количество ран, излеченных с ваших существ в ваш прошлый ход.",
	flavour_text: ""
)
Card.create(
	name: "Кайнасский ополченец",
	card_rarity: common,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [les],
	card_classes: [elf],
	rate: 3,
	cost: 3,
	attack: 2,
	health: 4,
	card_text: "Когда другой ваш персонаж был подготовлен, подготовьте Кайнасского ополченца (один раз за ход).",
	flavour_text: "Рекруты! Равнение на впередистоящего!"
)
Card.create(
	name: "Караульный",
	card_rarity: uncommon,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [les],
	card_classes: [elf],
	rate: 3,
	cost: 2,
	attack: 1,
	health: 3,
	card_text: "(Т): Выстрел на 1. (3): Подготовьте Караульного, он получает +1 к выстрелам до конца хода.",
	flavour_text: ""
)
Card.create(
	name: "Каринлина",
	card_rarity: rare,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [les],
	card_classes: [forestkeeper],
	rate: 3,
	cost: 2,
	attack: 1,
	health: 3,
	card_text: "(Т): Получите (1) до конца хода. Когда вы разыгрываете существо, подготовьте Каринлину (один раз за ход).",
	flavour_text: ""
)
Card.create(
	name: "Конструкция: Крепыш",
	card_rarity: common,
	card_url: "",
	card_type: spell,
	dropped_from_booster: true,
	card_set: set,
	elements: [les],
	card_classes: [ritual],
	rate: 2,
	cost: 4,
	card_text: "Выберите два раза одно из: - Создайте Защитный модуль. - Создайтель Модуль поддержки.",
	flavour_text: ""
)
Card.create(
	name: "Крепыш",
	card_rarity: rare,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [les],
	card_classes: [mech],
	rate: 3,
	cost: 3,
	attack: 0,
	health: 4,
	card_text: "Модуль. Броня 1. Регенерация 1. Гибель: Создайте Защитный модуль или Модуль поддержки.",
	flavour_text: ""
)
Card.create(
	name: "Лесной гигант",
	card_rarity: common,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [les],
	card_classes: [giant],
	rate: 3,
	cost: 8,
	attack: 8,
	health: 8,
	card_text: "Когда Лесной гигант был подготовлен, он получает +2 к удару.",
	flavour_text: "После себя гигант оставил целую просеку поваленных деревьев."
)
Card.create(
	name: "Ловец видений",
	card_rarity: uncommon,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [les],
	card_classes: [forestkeeper],
	rate: 3,
	cost: 1,
	attack: 1,
	health: 2,
	card_text: "(2)(Т): Подготовьте персонажа (откройте этого персонажа, он может снова атаковать и действовать).",
	flavour_text: "Снова в бой, защитники леса!"
)
Card.create(
	name: "Одеревенение",
	card_rarity: uncommon,
	card_url: "",
	card_type: spell,
	dropped_from_booster: true,
	card_set: set,
	elements: [les],
	card_classes: [sorcery],
	rate: 2,
	cost: 1,
	card_text: 'Существо получает "При атаке оглушите это существо" и становится энтом.',
	flavour_text: "Не... могу... пошевелиться..."
)
Card.create(
	name: "Пародвигатель",
	card_rarity: rare,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [les],
	card_classes: [mech],
	rate: 5,
	cost: 3,
	attack: 3,
	health: 4,
	card_text: "Модуль. Найм: Может сразиться с существом.",
	flavour_text: "У этой модели только один реальный недостаток - она стимулирует движение только вперед."
)
Card.create(
	name: "Плотоядный трехрог",
	card_rarity: common,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [les],
	card_classes: [mech],
	rate: 4,
	cost: 4,
	attack: 4,
	health: 4,
	card_text: "Когда ваш персонаж излечивается, создайте Защитный модуль или Модуль поддержки (один раз за ход).",
	flavour_text: ""
)
Card.create(
	name: "Превосходство фей",
	card_rarity: uncommon,
	card_url: "",
	card_type: spell,
	dropped_from_booster: true,
	card_set: set,
	elements: [les],
	card_classes: [sorcery],
	rate: 3,
	cost: 3,
	card_text: "Выберите не более двух существ. Каждое из них получает +3 к удару до конца хода.",
	flavour_text: "Впрочем, не стоит недооценивать этих маленьких созданий."
)
Card.create(
	name: 'Проект "Марис Тауро"',
	card_rarity: uncommon,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [les],
	card_classes: [mech],
	rate: 3,
	cost: 4,
	attack: 3,
	health: 5,
	card_text: "Каждый раз, когда наносит Х ран ударом герою, излечите вашего героя на Х.",
	flavour_text: ""
)
Card.create(
	name: 'Проект "Янис Тауро"',
	card_rarity: common,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [les],
	card_classes: [mech],
	rate: 3,
	cost: 4,
	attack: 2,
	health: 3,
	card_text: '(Т): Выстрел на Х, где Х - сила удара Проекта "Янис Тауро".',
	flavour_text: "Огневая мощь достигается одновременно за счет скорости стрелы и стрелка."
)
Card.create(
	name: "Стрела за стрелой",
	card_rarity: common,
	card_url: "",
	card_type: spell,
	dropped_from_booster: true,
	card_set: set,
	elements: [les],
	card_classes: [action],
	rate: 2,
	cost: 3,
	card_text: "Подготовьте вашего персонажа. Если у него есть выстрел, он получает +1 к выстрелам до конца хода.",
	flavour_text: ""
)
Card.create(
	name: "Ультиматум фей",
	card_rarity: ultra,
	card_url: "",
	card_type: spell,
	dropped_from_booster: true,
	card_set: set,
	elements: [les],
	card_classes: [ritual],
	rate: 4,
	cost: 4,
	card_text: "До 3 существ получают +3 к удару до конца хода. Возьмите карты за каждое существо в игре с ударом 6 или более.",
	flavour_text: "Ведь их магии подвластно все в лесу."
)
Card.create(
	name: "Фея росы",
	card_rarity: uncommon,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [les],
	card_classes: [fairy],
	rate: 5,
	cost: 3,
	attack: 2,
	health: 1,
	card_text: "Найм: Удар выбранного существа становится равен 6 до начала вашего следующего хода.",
	flavour_text: ""
)
Card.create(
	name: "Фея чащи",
	card_rarity: common,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [les],
	card_classes: [fairy],
	rate: 3,
	cost: 2,
	attack: 2,
	health: 3,
	card_text: "Найм: Можете оглушить существо с ударом 6 или более.",
	flavour_text: "Чем больше энт, тем громче падает."
)
Card.create(
	name: "Хмельная фея",
	card_rarity: rare,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [les],
	card_classes: [fairy],
	rate: 4,
	cost: 3,
	attack: 1,
	health: 3,
	card_text: "Найм: Выберите существо с ударом 6 или более; удар Хмельной феи становится равен удару этого существа; оглушите это существо, оно теряет особенности, его удар становится равен 1.",
	flavour_text: ""
)
Card.create(
	name: "Цветочная фея",
	card_rarity: common,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [les],
	card_classes: [fairy],
	rate: 2,
	cost: 1,
	attack: 2,
	health: 1,
	card_text: "Орда. Не получает ран от существ с ударом 6 или более.",
	flavour_text: "Не зевай, громила!"
)
Card.create(
	name: "Эльфери",
	card_rarity: common,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [les],
	card_classes: [ent],
	rate: 3,
	cost: 5,
	attack: 5,
	health: 10,
	card_text: "Найм: Закройте Эльфери. При атаке оглушите Эльфери.",
	flavour_text: "Дерево дереву рознь."
)
Card.create(
	name: "Энт-прародитель",
	card_rarity: ultra,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [les],
	card_classes: [ent],
	rate: 5,
	cost: 1,
	attack: 1,
	health: 2,
	card_text: "Энт-прародитель не открывается в начале вашего хода. (1): Откройте Энта-прародителя, затем удвойте его силу удара, максимальные жизни и стоимость этой особенности.",
	flavour_text: ""
)
Card.create(
	name: "Акванит",
	card_rarity: common,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [boloto],
	card_classes: [akvanit],
	rate: 4,
	cost: 3,
	attack: 4,
	health: 5,
	card_text: "Каждый раз, когда противник разыгрывает карту, ранить Акванита на 1.",
	flavour_text: ""
)
Card.create(
	name: "Акванит-страж",
	card_rarity: rare,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [boloto],
	card_classes: [akvanit],
	rate: 4,
	cost: 2,
	attack: 2,
	health: 3,
	card_text: "Если противник разыгрывает карту, не являющуюся существом, вы можете уничтожить Акванита-стража, при этом отмените эту карту.",
	flavour_text: ""
)
Card.create(
	name: "Бессилие утопленника",
	card_rarity: ultra,
	card_url: "",
	card_type: spell,
	dropped_from_booster: true,
	card_set: set,
	elements: [boloto],
	card_classes: [action],
	rate: 4,
	cost: 6,
	card_text: "Противник не может разыгрывать карты в свой следующий ход.",
	flavour_text: "Пучина заглушит твои крики."
)
Card.create(
	name: "Вождь акванитов",
	card_rarity: common,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [boloto],
	card_classes: [akvanit],
	rate: 4,
	cost: 5,
	attack: 5,
	health: 5,
	card_text: "Найм: противник может заплатить (2), иначе вы можете положить существо в руку владельца.",
	flavour_text: ""
)
Card.create(
	name: "Генератор тумана",
	card_rarity: ultra,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [boloto],
	card_classes: [artifact],
	rate: 3,
	cost: 5,
	attack: 0,
	health: 12,
	card_text: "Найм: Отравить каждое существо противника на 1. В начале хода противника ранить его героя на 1. (Т): Усилить отравление каждого существа противника на 1.",
	flavour_text: ""
)
Card.create(
	name: "Гоблин-подводник",
	card_rarity: uncommon,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [boloto],
	card_classes: [podzemnik],
	rate: 3,
	cost: 2,
	attack: 4,
	health: 4,
	card_text: "Когда противник разыгрывает вторую карту за ход, уничтожьте Гоблина-подводника.",
	flavour_text: ""
)
Card.create(
	name: "Джаал",
	card_rarity: uncommon,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [boloto],
	card_classes: [mercenary],
	rate: 4,
	cost: 2,
	attack: 3,
	health: 2,
	card_text: "Найм: Если у вас в руке больше карт, чем у противника, возьмите карту.",
	flavour_text: ""
)
Card.create(
	name: "Клинок Архааля",
	card_rarity: common,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [boloto],
	card_classes: [arhaalit],
	rate: 2,
	cost: 1,
	attack: 2,
	health: 1,
	card_text: "Найм: Если в вашей руке больше карт, чем у противника, можете отравить существо на 1.",
	flavour_text: ""
)
Card.create(
	name: "Конструкция: Ремонтник",
	card_rarity: common,
	card_url: "",
	card_type: spell,
	dropped_from_booster: true,
	card_set: set,
	elements: [boloto],
	card_classes: [ritual],
	rate: 2,
	cost: 4,
	card_text: "Выберите два раза одно из: - Создайте Модуль поддержки. - Создайте Модуль подавления.",
	flavour_text: ""
)
Card.create(
	name: "Концентрация",
	card_rarity: common,
	card_url: "",
	card_type: spell,
	dropped_from_booster: true,
	card_set: set,
	elements: [boloto],
	card_classes: [sorcery],
	rate: 4,
	cost: 3,
	card_text: "Возьмите две карты.",
	flavour_text: "Потоки магии переплетутся с морскими течениями."
)
Card.create(
	name: "Королевский налог",
	card_rarity: rare,
	card_url: "",
	card_type: event,
	dropped_from_booster: true,
	card_set: set,
	elements: [boloto],
	card_classes: [event_event],
	rate: 2,
	cost: 3,
	card_text: "Пока Королевский налог открыт, существа стоят на (1) дороже. (Т): До конца хода противника заклинания стоят на (1) дороже.",
	flavour_text: ""
)
Card.create(
	name: "Любопытный гоблин",
	card_rarity: common,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [boloto],
	card_classes: [mech],
	rate: 3,
	cost: 4,
	attack: 1,
	health: 4,
	card_text: "Модуль. В конце вашего хода - возьмите карту, если у вас нет существ не-механизмов.",
	flavour_text: ""
)
Card.create(
	name: "Мехакванит",
	card_rarity: common,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [boloto],
	card_classes: [mech],
	rate: 3,
	cost: 2,
	attack: 4,
	health: 3,
	card_text: "Когда становится целью заклинания, уничтожьте Мехакванита.",
	flavour_text: "С этими акванитами вечно одна и та же история!"
)
Card.create(
	name: "Отравить реку!",
	card_rarity: rare,
	card_url: "",
	card_type: spell,
	dropped_from_booster: true,
	card_set: set,
	elements: [boloto],
	card_classes: [order],
	rate: 4,
	cost: -1,
	card_text: "Отравить существо на Х.",
	flavour_text: '"Ни один из этих неверных не должен увидеть рассвет следующего дня". Мерег'
)
Card.create(
	name: "Пехота Архааля",
	card_rarity: uncommon,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [boloto],
	card_classes: [arhaalit],
	rate: 1,
	cost: 1,
	attack: 1,
	health: 1,
	card_text: "Орда. Гибель: Поиск - Пехота Архааля; можете отравить существо на 1.",
	flavour_text: "Война никогда не меняется."
)
Card.create(
	name: "Подводный цех",
	card_rarity: uncommon,
	card_url: "",
	card_type: event,
	dropped_from_booster: true,
	card_set: set,
	elements: [boloto],
	card_classes: [land],
	rate: 3,
	cost: 3,
	card_text: "В конце хода противника, если он разыграл меньше двух карт в этот ход, создайте Модуль поддержки или Модуль подавления.",
	flavour_text: "Шедевры не рождаются в спешке"
)
Card.create(
	name: "Преданный Архааля",
	card_rarity: rare,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [boloto],
	card_classes: [undead],
	rate: 3,
	cost: 1,
	attack: 2,
	health: 1,
	card_text: "(Х), сбросьте карту: Возродите Х Преданных Архааля (эта особенность работает на кладбище).",
	flavour_text: ""
)
Card.create(
	name: "Ремонтник",
	card_rarity: rare,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [boloto],
	card_classes: [mech],
	rate: 3,
	cost: 3,
	attack: 1,
	health: 3,
	card_text: "Модуль. Регенерация 1. Защита от заклинаний. Гибель: Создайте Модуль поддержки или Модуль подавления.",
	flavour_text: ""
)
Card.create(
	name: "Силах",
	card_rarity: common,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [boloto],
	card_classes: [arhaalit],
	rate: 2,
	cost: 2,
	attack: 2,
	health: 3,
	card_text: "Когда вы берете вторую карту за ход, ранить героя противника на 2.",
	flavour_text: ""
)
Card.create(
	name: "Страж купели",
	card_rarity: common,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [boloto],
	card_classes: [arhaalit],
	rate: 3,
	cost: 4,
	attack: 4,
	health: 4,
	card_text: "В начале хода противника ранить его героя на 1.",
	flavour_text: ""
)
Card.create(
	name: "Турбохвост",
	card_rarity: uncommon,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [boloto],
	card_classes: [mech],
	rate: 5,
	cost: 3,
	attack: 1,
	health: 1,
	card_text: "Модуль. Гибель: Возьмите Х карт, где Х - сила удара этого существа (до того, как оно погибло).",
	flavour_text: ""
)
Card.create(
	name: "Тягучее варево",
	card_rarity: common,
	card_url: "",
	card_type: spell,
	dropped_from_booster: true,
	card_set: set,
	elements: [boloto],
	card_classes: [potion],
	rate: 2,
	cost: 2,
	card_text: "Первая карта каждого противника в его следующий ход стоит на (1) дороже. Возьмите карту.",
	flavour_text: ""
)
Card.create(
	name: "У всего есть цена",
	card_rarity: uncommon,
	card_url: "",
	card_type: spell,
	dropped_from_booster: true,
	card_set: set,
	elements: [boloto],
	card_classes: [action],
	rate: 4,
	cost: 4,
	card_text: "Противник может заплатить стоимость выбранного существа; иначе положите это существо под низ колоды.",
	flavour_text: ""
)
Card.create(
	name: "Усыпить",
	card_rarity: common,
	card_url: "",
	card_type: spell,
	dropped_from_booster: true,
	card_set: set,
	elements: [boloto],
	card_classes: [sorcery],
	rate: 4,
	cost: 2,
	card_text: "Положите существо в руку владельца. Существа с таким же названием стоят на (1) дороже в следующий ход противника.",
	flavour_text: ""
)
Card.create(
	name: "Феллин",
	card_rarity: rare,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [boloto],
	card_classes: [podzemnik],
	rate: 4,
	cost: 4,
	attack: 4,
	health: 5,
	card_text: "Уникальность. Если карта противника должна стоить дороже, она стоит дополнительно на (1) дороже.",
	flavour_text: ""
)
Card.create(
	name: "Хранитель источника",
	card_rarity: common,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [boloto],
	card_classes: [mech],
	rate: 3,
	cost: 7,
	attack: 8,
	health: 11,
	card_text: "Отравление 2(в начале вашего хода ранить это существо на 2).",
	flavour_text: "Как лодку назовешь, так она и проржавеет!"
)
Card.create(
	name: "Цена знания",
	card_rarity: uncommon,
	card_url: "",
	card_type: spell,
	dropped_from_booster: true,
	card_set: set,
	elements: [boloto],
	card_classes: [ritual],
	rate: 3,
	cost: 3,
	card_text: "Возьмите карту. Ранить персонажа на Х, где Х - количество карт, которые вы взяли в этот ход.",
	flavour_text: "Многие печали."
)
Card.create(
	name: "Ырх",
	card_rarity: common,
	card_url: "",
	card_type: creature,
	dropped_from_booster: true,
	card_set: set,
	elements: [boloto],
	card_classes: [troll],
	rate: 3,
	cost: 3,
	attack: 2,
	health: 3,
	card_text: "Гибель: Возьмите карту.",
	flavour_text: '"Сбейте гонца! Нам нужна эта информация!"'
)