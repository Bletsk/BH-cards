def loadSeedFile(filename)
  return p "error" unless filename
  file = Dir[File.join(Rails.root, 'db', 'seeds', filename.to_s + '.rb')].first
  puts "hello"
  puts file
  load file if file
end

loadSeedFile("test")

p "Степени редкости"
common = CardRarity.create(name: "common")
uncommon = CardRarity.create(name: "uncommon")
rare = CardRarity.create(name: "rare")
ultra = CardRarity.create(name: "ultra")

p "Стихии"
boloto = Element.create(name: "Болото")
les = Element.create(name: "Лес")
tma = Element.create(name: "Тьма")
stepi = Element.create(name: "Степи")
gori = Element.create(name: "Горы")
neutral = Element.create(name: "Нейтрал")

p "Типы карт"
creature = CardType.create(name: "Существо")
hero = CardType.create(name: "Герой")
spell = CardType.create(name: "Заклинание")
weapon = CardType.create(name: "Оружие")
armor = CardType.create(name: "Броня")
amulet = CardType.create(name: "Амулет")
event = CardType.create(name: "Событие")

p "Классы карт"
mech = CardClass.create(name: "Механизм")
action = CardClass.create(name: "Действие")
mercenary = CardClass.create(name: "Наемник")
order = CardClass.create(name: "Приказ")
orc = CardClass.create(name: "Орк")
ritual = CardClass.create(name: "Ритуал")
akkenian = CardClass.create(name: "Аккениец")
event_event = CardClass.create(name: "Событие")
centaur = CardClass.create(name: "Кентавр")
brotherhood = CardClass.create(name: "Братство")
beast = CardClass.create(name: "Зверь")
sorcery = CardClass.create(name: "Волшебство")
fairy = CardClass.create(name: "Фея")
forestkeeper = CardClass.create(name: "Страж леса")
land = CardClass.create(name: "Местность")
ent = CardClass.create(name: "Энт")
elf = CardClass.create(name: "Эльф")
giant = CardClass.create(name: "Великан")
potion = CardClass.create(name: "Зелье")
sphere = CardClass.create(name: "Сфера")
krongchild = CardClass.create(name: "Дитя Кронга")



# p "[Время Героев]"
# CardSet.create(name: "Время Героев")

# p "[Сила и Честь]"
# CardSet.create(name: "Сила и Честь")

# p "[Повелители Стихий]"
# CardSet.create(name: "Повелители Стихий")

# p "[Восхождение Тени]"
# CardSet.create(name: "Восхождение Тени")

# # Рожденные Бурей
# p "[Рожденные Бурей]"
# set = CardSet.create(name: "Рожденные Бурей")

# p "Лес"
# Card.create(name: "Антар", card_rarity: common, card_url: "http://berserk.ru/image/data/Берсерк/lesa-5-copy.png", card_type: creature, dropped_from_booster: true, card_set: set, elements: [les], rate: 3, cost: 2)
# # Card.create(name: "Бер", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-52-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 6)
# # Card.create(name: "Берегиня", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/lesa-53-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
# # Card.create(name: "Богл", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-54-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)
# # Card.create(name: "Вердант", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-55-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Ветвич", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/lesa-56-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 5)

# # Card.create(name: "Вожак сатиров", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/lesa-57-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 6)
# # Card.create(name: "Вьюрр", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-58-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
# # Card.create(name: "Дионея", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/lesa-510-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
# # Card.create(name: "Дубина", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/lesa-511-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 4)
# # Card.create(name: "Душистый хмель", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-512-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 0)
# # Card.create(name: "Единство", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/lesa-513-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)

# # Card.create(name: "Жагна", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi59-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 5)
# # Card.create(name: "Золото лепреконов", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-514-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 1)
# # Card.create(name: "Из ростка - жизнь", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/lesa-516-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Илу", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/lesa-517-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
# # Card.create(name: "Ильфари", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/multi510-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 4)
# # Card.create(name: "Лепрекон", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/lesa-518-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)

# # Card.create(name: "Ловушка леприконов", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/lesa-519-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 1)
# # Card.create(name: "Ловчий", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/lesa-520-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Маг забвения", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/lesa-521-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)
# # Card.create(name: "Марголок", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-522-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
# # Card.create(name: "Меркита", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/lesa-523-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
# # Card.create(name: "Небесная стража", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/lesa-524-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)

# # Card.create(name: "Обряд цветения", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-525-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Онод", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/lesa-526-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 7)
# # Card.create(name: "Плодородие", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-527-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 0)
# # Card.create(name: "Подготовка лучников", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/lesa-528-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# # Card.create(name: "Подлунник", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-529-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 5)
# # Card.create(name: "Подмога", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/lesa-530-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)

# # Card.create(name: "Разведка", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/lesa-531-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
# # Card.create(name: "Ришалис", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-532-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)
# # Card.create(name: "Рог единорога", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/lesa-533-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Рогаль", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-534-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
# # Card.create(name: "Рузарх", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/lesa-535-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 8)
# # Card.create(name: "Снежный циклоп", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-536-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 5)

# # Card.create(name: "Снурли", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-537-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
# # Card.create(name: "Странствующий друид", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-538-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Стычка", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-539-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
# # Card.create(name: "Сумка лепрекона", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/lesa-540-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 4)
# # Card.create(name: "Фея леса", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/lesa-541-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# # Card.create(name: "Фиал исцеления", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-542-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 1)

# # Card.create(name: "Хмарник", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-544-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
# # Card.create(name: "Читающая небо", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/lesa-545-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)
# # Card.create(name: "Эльф-всадник", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-546-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Эльф-лазутчик", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-547-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)
# # Card.create(name: "Эхин", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/lesa-548-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 5)

# # p "Горы"
# # Card.create(name: "Ай-суру", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-5-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# # Card.create(name: "Алмазный алтарь", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/gorii-52-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
# # Card.create(name: "Баграх", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-53-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 5)
# # Card.create(name: "Бешенство", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-NEW-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 2)
# # Card.create(name: "Бугур", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-56-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
# # Card.create(name: "Буревестник", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-57-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)

# # Card.create(name: "Вараэль", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/gorii-58-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
# # Card.create(name: "Варг", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-59-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Ватажник", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-510-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Вельтар", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/gorii-511-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)
# # Card.create(name: "Визит к броннику", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-512-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)
# # Card.create(name: "Вождь снорлингов", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/gorii-513-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 5)

# # Card.create(name: "Вукула", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/gorii-514-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 5)
# # Card.create(name: "Гарпия", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-515-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)
# # Card.create(name: "Гном", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-516-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# # Card.create(name: "Гном-исследователь", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-517-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Гном-рейдер", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/gorii-518-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)
# # Card.create(name: "Доспех вождя", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/gorii-519-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)

# # Card.create(name: "Дух горы", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/gorii-520-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)
# # Card.create(name: "Заморозка", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-521-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Из клинка - арсенал", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/gorii-522-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# # Card.create(name: "Иккол", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-523-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# # Card.create(name: "Исварс", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-524-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Кольцо мага", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/gorii-525-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 2)

# # Card.create(name: "Ледяной голем", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-526-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
# # Card.create(name: "Молотобоец", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-528-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
# # Card.create(name: "Нигде не скрыться", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/gorii-530-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 5)
# # Card.create(name: "Обряд грома", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-531-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)
# # Card.create(name: "Оледенение", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-532-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 4)
# # Card.create(name: "Оседлавший лавину", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/gorii-533-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)

# # Card.create(name: "Подготовить волшбу", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/gorii-534-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 5)
# # Card.create(name: "Предвидение", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-535-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 1)
# # Card.create(name: "Разорение", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/gorii-536-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
# # Card.create(name: "Редья", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/gorii-537-NEW.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 3)
# # Card.create(name: "Рожденная бурей", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/gorii-538-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 2)
# # Card.create(name: "Рунная чародейка", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/gorii-539-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)

# # Card.create(name: "Скальд", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/gorii-540-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)
# # Card.create(name: "Сквозь бурю", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/gorii-541-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
# # Card.create(name: "Сокрушающий удар", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/gorii-542-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 2)
# # Card.create(name: "Трескучий мороз", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/gorii-543-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 0)
# # Card.create(name: "Хранитель бури", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/gorii-544-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Шар молний", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/gorii-545-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)

# # Card.create(name: "Шаровая молния", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/gorii-546-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
# # Card.create(name: "Эйвинд", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-547-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
# # Card.create(name: "Электрификация", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-548-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)

# # p "Тьма"

# # Card.create(name: "Адский пес", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-5-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# # Card.create(name: "Бросок головой", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-52-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 1)
# # Card.create(name: "Вампир-прислужник", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-53-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
# # Card.create(name: "Ведьма Пустоши", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/dark-54-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Венайра", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/dark-55-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)
# # Card.create(name: "Венат", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/dark-56-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)

# # Card.create(name: "Вербовка павших", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-57-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# # Card.create(name: "Висс", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-58-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
# # Card.create(name: "Воины Морла", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/dark-59-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 8)
# # Card.create(name: "Врата обреченных", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/dark-510-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
# # Card.create(name: "Вторая жизнь", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/dark-511-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 1)
# # Card.create(name: "Выпить жизнь", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-512-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 2)

# # Card.create(name: "Гингасса", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-513-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 4)
# # Card.create(name: "Демон бессилия", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-514-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 5)
# # Card.create(name: "Демон боли", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi55-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
# # Card.create(name: "Демон гнева", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/dark-515-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 5)
# # Card.create(name: "Демонотиватор", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/dark-516-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 1)
# # Card.create(name: "Дзингор", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-517-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)

# # Card.create(name: "Древний чемпион", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/dark-518-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
# # Card.create(name: "Дух неудачи", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-519-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 1)
# # Card.create(name: "Из смерти - ничто", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/dark-520-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 5)
# # Card.create(name: "Изгнанный дух", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-521-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# # Card.create(name: "Инициация слуа", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/dark-522-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
# # Card.create(name: "Иссушение", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-NEW-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)

# # Card.create(name: "Йоро", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/dark-524-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)
# # Card.create(name: "Каниферрон", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/dark-526-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 6)
# # # TODO: добавить картинку с подтипом
# # Card.create(name: "Кара", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-527-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)
# # Card.create(name: "Костяная булава", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/dark-528-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
# # Card.create(name: "Костяной голем", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-529-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# # Card.create(name: "Костяной танцор", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-530-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 2)

# # Card.create(name: "Кровавый псарь", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-531-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Лефран", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/dark-532-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)
# # Card.create(name: "Лич-библиотекарь", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/multi511-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
# # Card.create(name: "Ловчая тьмы", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/dark-533-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Маскировка", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-534-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
# # Card.create(name: "Моррвильский кровосос", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/dark-535-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 4)

# # Card.create(name: "Обряд наказания", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-537-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 2)
# # Card.create(name: "Падальщик", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/dark-538-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
# # Card.create(name: "Палач", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/dark-539-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Пляска теней", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/dark-540-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 3)
# # Card.create(name: "Пожиратель душ", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-541-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
# # Card.create(name: "Притаившаяся погибель", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/dark-542-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 5)

# # Card.create(name: "Проклятье", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-543-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 1)
# # Card.create(name: "Снять стражу", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/dark-544-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# # # TODO: добавить картинку с подтипом
# # Card.create(name: "Утянуть в бездну", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/dark-545-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 5)
# # Card.create(name: "Фомор", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/dark-546-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 1)
# # Card.create(name: "Шакс", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-547-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)

# # p "Болото"

# # Card.create(name: '"Радушный" прием', rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-537-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)
# # Card.create(name: "Акванит-громила", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/swamp-5-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
# # Card.create(name: "Аниаг", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-52-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 5)
# # Card.create(name: "Архелон", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/swamp-53-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 6)
# # Card.create(name: "Ассасинация вайлов", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-54-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
# # Card.create(name: "Аярд", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/swamp-55-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 1)

# # Card.create(name: "Божественное просветление", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/swamp-56-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 0)
# # Card.create(name: "Бокор", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/swamp-57-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Бриус", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-58-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Бугай", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/swamp-59-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 5)
# # Card.create(name: "Бумбол", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-510-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
# # Card.create(name: "Владыка боли", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/swamp-511-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)

# # Card.create(name: "Вождь топей", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/swamp-512-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 4)
# # Card.create(name: "Возмездие Архааля", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-513-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
# # Card.create(name: "Вопляк", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/swamp-514-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)
# # Card.create(name: "Восстановление", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-515-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 1)
# # Card.create(name: "Дублер", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/swamp-517-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 5)
# # Card.create(name: "Задурманить голову", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/swamp-518-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 6)

# # Card.create(name: "Из дымки - туман", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/swamp-519-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# # Card.create(name: "Изгоняющий скверну", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/swamp-520-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
# # Card.create(name: "Исполнение желаний", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/swamp-521-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
# # Card.create(name: "Колыбельная подземья", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-522-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)
# # Card.create(name: "Лич-библиотекарь", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/multi511-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
# # Card.create(name: "Ловец молний", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-523-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)

# # Card.create(name: "Лутунни", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-524-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# # Card.create(name: "Миролюбие", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/swamp-526-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# # Card.create(name: "Моа", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-527-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
# # Card.create(name: "Наброситься", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-528-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Обращение", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/swamp-530-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
# # Card.create(name: "Одинокий призрак", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/swamp-531-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)

# # Card.create(name: "Ослепление", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-532-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
# # Card.create(name: "Отравленный кинжал", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/swamp-533-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
# # Card.create(name: "Отчаянный рывок", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/swamp-534-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
# # Card.create(name: "Оши-хоно", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/swamp-535-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 1)
# # Card.create(name: "Перст Архааля", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-536-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Плавучий остров", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/multi516-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)

# # Card.create(name: "Развеять", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-538-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
# # Card.create(name: "Спокойные воды", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/swamp-539-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
# # Card.create(name: "Спрятать в мешок", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-NEW4-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Тайновязь", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-541-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
# # Card.create(name: "Таугарт", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-542-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
# # Card.create(name: "Увалень", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/swamp-543-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)

# # Card.create(name: "Ужас болот", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-544-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 4)
# # Card.create(name: "Феерический обряд", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-545-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
# # Card.create(name: "Хунган", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-546-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
# # Card.create(name: "Шаман гоблинов", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/swamp-547-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# # Card.create(name: "Шар тины", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/swamp-548-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)

# # p "Степи"

# # Card.create(name: "Адан", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-5-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
# # Card.create(name: "Адепт пламени", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-52-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 1)
# # Card.create(name: "Аколит Дзара", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/stepi-53-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
# # Card.create(name: "Берсерк Братства", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/stepi-54-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
# # Card.create(name: "Бешеный орк", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-55-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Боевая ярость", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-56-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)

# # Card.create(name: "Буйный воитель", rarity: "uncommon", card_url: "http://berserk.ru/image/data/stepi-57-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 5)
# # Card.create(name: "Волки пустоши", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/stepi-58-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Воспламенение", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/stepi-59-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 8)
# # Card.create(name: "Второе дыхание", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/stepi-510-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 4)
# # Card.create(name: "Гремлины", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-511-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)
# # Card.create(name: "Двойной ожог", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/stepi-512-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)

# # Card.create(name: "Дуэлянт", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-513-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
# # Card.create(name: "Жрец змея", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-514-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# # Card.create(name: "Заводной ящер", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-515-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Засуха", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/stepi-516-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
# # Card.create(name: "Игнис", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-517-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 5)
# # Card.create(name: "Из искры - пламя", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/stepi-518-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)

# # Card.create(name: "Кандийский чародей", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/stepi-519-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# # Card.create(name: "Капеллан", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-520-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# # Card.create(name: "Клинок Илле", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/stepi-521-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
# # Card.create(name: "Копьеметатели", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/stepi-523-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# # Card.create(name: "Крылан", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/stepi-524-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 1)
# # Card.create(name: "Кулхан", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-525-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)

# # Card.create(name: "Купец", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-526-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
# # Card.create(name: "Кшар", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-527-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
# # Card.create(name: "Мастер клинка", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-529-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# # Card.create(name: "Меткий орк", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/stepi-531-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 6)
# # Card.create(name: "Молодой орк", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-532-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)
# # Card.create(name: "Накамлать", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-533-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)

# # Card.create(name: "Нгор", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-534-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 5)
# # Card.create(name: "Обряд защиты", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-535-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
# # Card.create(name: "Охотники за реликвиями", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/stepi-536-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
# # Card.create(name: "Плетение огня", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-537-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)
# # Card.create(name: "Посвященный Дзара", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/stepi-538-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 5)
# # Card.create(name: "Призывательница Дзара", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/stepi-539-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)

# # Card.create(name: "Протекция", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/stepi-540-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
# # Card.create(name: "Пылающая стрела", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-541-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 1)
# # Card.create(name: "Солнечный грифон", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/stepi-542-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Степной волколак", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/stepi-543-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
# # Card.create(name: "Стилет", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/stepi-544-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 1)
# # Card.create(name: "Тамия", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/stepi-545-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)

# # Card.create(name: "Уязвимость", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-546-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
# # Card.create(name: "Шар бури", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/stepi-547-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# # Card.create(name: "Яйцо дракона", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/stepi-548-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)

# # p "Нейтралы"

# # Card.create(name: "Адепт пустоты", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/neutral-5-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
# # Card.create(name: "Альмагост", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-52-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
# # Card.create(name: "Ангел возмездия", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral-53-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 4)
# # Card.create(name: "Ангел милосердия", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral-54-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
# # Card.create(name: "Ангел равновесия", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral-55-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
# # Card.create(name: "Арлекин", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-56-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)

# # Card.create(name: "Ассасин храма", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral-57-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
# # Card.create(name: "Ашалла", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral-58-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
# # Card.create(name: "Багрянник", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-59-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 6)
# # Card.create(name: "Барака", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral-510-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Барбант", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-511-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
# # Card.create(name: "Боевой носорог", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-512-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 6)

# # Card.create(name: "Боевые мотивы", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-513-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 1)
# # Card.create(name: "Борг", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-514-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 7)
# # Card.create(name: "Бретер", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-515-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)
# # Card.create(name: "Броненосец", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-516-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
# # Card.create(name: "Буйвол", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral-517-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 6)
# # Card.create(name: "Бывалый гоблин", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-518-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)

# # Card.create(name: "Властелин хаоса", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-519-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 7)
# # Card.create(name: "Вожак прайда", rarity: "rare", card_url: "http://berserk.ru/image/data/neutral-520-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
# # Card.create(name: "Воин Тоа-дана", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral-521-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
# # Card.create(name: "Вор", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-522-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
# # Card.create(name: "Галливестпин", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral-523-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
# # Card.create(name: "Гаррота", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral-524-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 5)

# # Card.create(name: "Гатарнус", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-525-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 0)
# # Card.create(name: "Гвеор", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-526-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# # Card.create(name: "Гладиатор", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral-527-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 7)
# # Card.create(name: "Голем-дозорный", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-528-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 1)
# # Card.create(name: "Горт", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral-529-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Дархан", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-530-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 6)

# # Card.create(name: "Демон-привратник", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/neutral-531-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 6)
# # Card.create(name: "Дозор Святолесья", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral-532-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 5)
# # Card.create(name: "Драйдер", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral-533-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 5)
# # Card.create(name: "Дриада", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral-534-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# # Card.create(name: "Дрянное пойло", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral-535-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)
# # Card.create(name: "Живущий в тумане", rarity: "uncommon", card_url: "http://berserk.ru/image/data/neutral-536-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)

# # Card.create(name: "Жрица Дзаза", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-537-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
# # Card.create(name: "Заступник", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/neutral-538-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 6)
# # Card.create(name: "Зверь Рунда", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-539-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 5)
# # Card.create(name: "Золотой голем", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-540-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 10)
# # Card.create(name: "Из тени - на свет", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral-541-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)
# # Card.create(name: "Карта сокровищ", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral-542-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)

# # Card.create(name: "Костер инквизиции", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral-543-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 4)
# # Card.create(name: "Костоглод", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-544-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
# # Card.create(name: "Крондак", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-545-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 1)
# # Card.create(name: "Крыс Лихолесья", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-546-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
# # Card.create(name: "Крыс Темноводья", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-547-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
# # Card.create(name: "Ландскнехт", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral-548-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)

# # Card.create(name: "Микаэль", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/neutral-549-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 6)
# # Card.create(name: "Море по колено", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-NEW-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 3)
# # Card.create(name: "Наемник-ветеран", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-551-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
# # Card.create(name: "Облачница", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral-553-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
# # Card.create(name: "Орикс", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-554-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
# # Card.create(name: "Орк-ведун", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-555-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 1)

# # Card.create(name: "Орк-ловчий", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-556-copy.png", card_type: creature, dropped_from_booster: false, card_set_id: set.id, rate: 4, cost: 5)
# # Card.create(name: "Отец-экзекутор", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-557-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Отшельник", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-558-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
# # Card.create(name: "Паладин Братства", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/neutral-559-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 5)
# # Card.create(name: "Паладин Сеггера", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral-560-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 6)
# # Card.create(name: "Паломник", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-561-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)

# # Card.create(name: "Пегас", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral-562-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
# # Card.create(name: "Первоэлемент", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral-563-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# # Card.create(name: "Подсмотреть", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-564-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 2)
# # Card.create(name: "Преторианец", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-565-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
# # Card.create(name: "Приручить смерть", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-566-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 1)
# # Card.create(name: "Рысь", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-567-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)

# # Card.create(name: "Серая эльфийка", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral-568-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# # Card.create(name: "Содалис", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-569-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Сокрушающие удары", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral-570-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
# # Card.create(name: "Спрайт", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral-571-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 2)
# # Card.create(name: "Страж Бренора", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral-572-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Тауматург", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral-573-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)

# # Card.create(name: "Ульфсарк", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-574-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
# # Card.create(name: "Урайон", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral-575-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
# # Card.create(name: "Хранители тумана", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-576-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
# # Card.create(name: "Хронист", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral-577-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Чумной легионер", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/neutral-578-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
# # Card.create(name: "Шерамма", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-579-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)

# # Card.create(name: "Шерид", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-580-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Экклезиарх", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral-581-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 4)
# # Card.create(name: "Эртания", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral-582-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)


# # p "Мультистихийные"
# # Card.create(name: "Бледный тролль", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi52-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Дупликация жизни", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/multi56-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
# # Card.create(name: "Дух оруженосца", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/multi58-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 1)
# # Card.create(name: "Ловкость рук", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi512-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
# # Card.create(name: "Пламя жизни", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi517-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
# # Card.create(name: "Цикл перерождения", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/multi521-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 1)

# # Card.create(name: "Анализ эфира", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/multi51-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 5)
# # Card.create(name: "Волчий всадник", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi53-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Горный великан", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/multi54-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 5)
# # Card.create(name: "Дупликация мыслей", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/multi57-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 4)
# # Card.create(name: "Предательство оруженосца", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi519-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
# # Card.create(name: "Разбомбить", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi520-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 5)

# # Card.create(name: "Обольщение", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/multi513-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 5)
# # Card.create(name: "Оскверненный разум", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi515-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Омышение", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi514-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)

# # p "Герои"
# # Card.create(name: "Глемсель", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/lesa-59-copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
# # Card.create(name: "Зумб", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/lesa-515-copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
# # Card.create(name: "Понита", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/multi518-copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
# # Card.create(name: "Хирви", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-543-copy.png", card_type: hero, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 0)
# # Card.create(name: "Балеог", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/gorii-54-copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
# # Card.create(name: "Манн", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-527-copy.png", card_type: hero, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 0)

# # Card.create(name: "Ниара", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/gorii-529-copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
# # Card.create(name: "Кальвина", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/dark-525-copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
# # Card.create(name: "Найрита", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-536-copy.png", card_type: hero, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 0)
# # Card.create(name: "Элмор", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/dark-548-copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
# # Card.create(name: "Горуг", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/swamp-516-copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
# # Card.create(name: "Мерег", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-525-copy.png", card_type: hero, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 0)

# # Card.create(name: "Невтида", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/swamp-529-copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
# # Card.create(name: "Командующий Эрих", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/stepi-522-copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
# # Card.create(name: "Линнет", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-528-copy.png", card_type: hero, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 0)
# # Card.create(name: "Мериса", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/stepi-530-copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
# # Card.create(name: "Наместник Виг", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/neutral-552-copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)

# # # Грехи Прошлого
# # p "[Грехи Прошлого]"
# # set = CardSet.create(name: "Грехи Прошлого");

# # p "Лес"
# # Card.create(name: "Ангешти", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/forest2copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 6)
# # Card.create(name: "Бокан", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/forest3_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 1)
# # Card.create(name: "Быкоглавец", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/forest5_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
# # Card.create(name: "Ведающий тропы", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/forest6_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 5)
# # Card.create(name: "Воин Жлезодрева", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/forest7-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# # Card.create(name: "Воительница забвения", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/forest8_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Воля Аластара", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/forest9copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# # Card.create(name: "Гвардия Таликса", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/forest10_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Грост", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/forest11-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 8)
# # Card.create(name: "Древесный птицеед", rarity: "rare", card_url: "http://berserk.ru/image/data/forest12_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 5)
# # Card.create(name: "Живой лук", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/forest13copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 1)
# # Card.create(name: "Карнаж", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/forest14-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
# # Card.create(name: "Мелиада", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/forest15-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Мурини", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/forest16_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 7)
# # Card.create(name: "Сиротки Кронга", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/forest17_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
# # Card.create(name: "Спустить зверя!", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/forest18copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
# # Card.create(name: "Фиал предвидения", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/forest19-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# # Card.create(name: "Чревоугодие", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/forest21-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
# # Card.create(name: "Шар плюща", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/forest22-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
# # Card.create(name: "Эльфийский охотник", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/forest23copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)
# # Card.create(name: "Эльфийский следопыт", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/forest24copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
# # Card.create(name: "Ящерка", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/forest25_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)

# # p "Горы"
# # Card.create(name: "Альфин", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/gorii-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 5)
# # Card.create(name: "Берсерк клана волка", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/gorii2-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Бронник клана Камня", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/gorii3copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 4)
# # Card.create(name: "Бьорнриттер", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/gorii4copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Гнев", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/gorii5-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Дейра", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii7-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 4)
# # Card.create(name: "Жрица бури", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/gorii8-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)

# # Card.create(name: "Йети", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii9-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 1)
# # Card.create(name: "Лень", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/gorii10-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
# # Card.create(name: "Неудачное ограбление", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii11-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
# # Card.create(name: "Пьяная драка", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/gorii12-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
# # Card.create(name: "Раздвоенная молния", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/gorii13_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Раздумия", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii14-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)

# # Card.create(name: "Собрать стаю", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/gorii16-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 4)
# # Card.create(name: "Таэр", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii17copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 6)
# # Card.create(name: "Тельфарра", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/gorii18-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
# # Card.create(name: "Фиал энергии", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii19-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
# # Card.create(name: "Халланский голем", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii20copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
# # Card.create(name: "Хладник", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii21-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)

# # Card.create(name: "Хозяйка лавин", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii22_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
# # Card.create(name: "Шар удачи", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/gorii23-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 2)
# # Card.create(name: "Эльдринг", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii24copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)

# # p "Тьма"
# # Card.create(name: "Абизу", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/dark_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 6)
# # Card.create(name: "Алхимия скрытности", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/dark2-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 1)
# # Card.create(name: "Брат по крови", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/dark3copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 2)
# # Card.create(name: "Вечная служба", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark4_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
# # Card.create(name: "Воля Танатоса", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/dark5copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 5)
# # Card.create(name: "Зависть", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/dark6-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Крухх", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark7copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)
# # Card.create(name: "Мерзкое варево", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi6copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 6)

# # Card.create(name: "Месть павших", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark9-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# # Card.create(name: "Немая стража", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark10_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 1)
# # Card.create(name: "Ньярли", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/dark11copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 5)
# # Card.create(name: "Осквернитель", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/dark12-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
# # Card.create(name: "Прокаженный", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark13_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 2)
# # Card.create(name: "Сиантия", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark14-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 5)

# # Card.create(name: "Скользящая в сумерках", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/dark15-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
# # Card.create(name: "Сожжение души", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark16copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# # Card.create(name: "Соултрад", rarity: "ultra", card_url: "http://berserk.ru/image/data/berserk/dark17-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 3)
# # Card.create(name: "Фанатик", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark18copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
# # Card.create(name: "Харон", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/dark19_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 8)
# # Card.create(name: "Хозяин склепа", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/dark21_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)

# # Card.create(name: "Хтон", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark20copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 6)
# # Card.create(name: "Шар проклятия", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/dark22copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
# # Card.create(name: "Экстрактор душ", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark23copy.png", card_type: creature, dropped_from_booster: false, card_set_id: set.id, rate: 5, cost: 2)

# # p "Болото"
# # Card.create(name: "Акванит-жрец", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/swamp-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 3)
# # Card.create(name: "Блуд", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/swamp2-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 2)

# # Card.create(name: "Вайл", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp3-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 1)
# # Card.create(name: "Вестник Архааля", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/swamp4copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
# # Card.create(name: "Взлом эфира", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp5copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
# # Card.create(name: "Воля Вудли", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp6_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 2)
# # Card.create(name: "Голодные духи", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/swamp7_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 4)
# # Card.create(name: "Исхар", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/swamp9-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 3)

# # Card.create(name: "Карбагаш", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp10-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 5)
# # Card.create(name: "Клинок Ихвэ", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/swamp11copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 3)
# # Card.create(name: "Крабопаук", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp12copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# # Card.create(name: "Маг Разана", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp13-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
# # Card.create(name: "Мистик Алгниса", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/swamp14-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 6)
# # Card.create(name: "Опутать плющом", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp15-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)

# # Card.create(name: "Плеть Архааля", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp16-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
# # Card.create(name: "Повелевающий", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/swamp17-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# # Card.create(name: "Проповедник", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp18copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 2)
# # Card.create(name: "Старец Ихвэ", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/swamp19copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
# # Card.create(name: "Трясинщик", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp20_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)
# # Card.create(name: "Фиал порчи", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp21-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)

# # Card.create(name: "Хранитель руин", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/swamp22_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 4)
# # Card.create(name: "Ядовитый туман", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/swamp24_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)

# # p "Степи"
# # Card.create(name: "Алчность", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/stepi-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)

# # Card.create(name: "Алчущее пламя", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi2copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 3)
# # Card.create(name: "Альдис", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/stepi3copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
# # Card.create(name: "Аркенай", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi4-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Воительница Аккении", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi5_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
# # Card.create(name: "Гонец Аккении", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi6-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)
# # Card.create(name: "Держать позицию!", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi7-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)

# # Card.create(name: "Дочь ветра", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/stepi8_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
# # Card.create(name: "Дух чародея", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/stepi10copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 9)
# # Card.create(name: "Дэв", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi11-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# # Card.create(name: "Зачинщик", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi12-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)
# # Card.create(name: "Искажение реальности", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/stepi14copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 0)
# # Card.create(name: "Маг щита", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi15_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 4)

# # Card.create(name: "Наездник на виверне", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/stepi16-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
# # Card.create(name: "Огр-степняк", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/stepi17_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 5)
# # Card.create(name: "Песчаный всадник", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi18-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "По коням!", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi19copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)
# # Card.create(name: "Повелитель псов", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/stepi20_copy1.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 5)
# # Card.create(name: "Рыцарь арьергарда", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/stepi21-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)

# # Card.create(name: "Серия ударов", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/stepi22copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# # Card.create(name: "Фарсат", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/stepi23-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 6)
# # Card.create(name: "Фолиант алчущих", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/stepi24copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)

# # p "Нейтралы"
# # Card.create(name: "Амазонка", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutralcopy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# # Card.create(name: "Ангел познания", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/neutral2_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 6)
# # Card.create(name: "Арнц", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral3-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 5)
# # Card.create(name: "Варахиэль", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral4_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)

# # Card.create(name: "Вестник битв", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral5_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
# # Card.create(name: "Вечный рыцарь", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral6-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
# # Card.create(name: "Вивисектор", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral7copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 8)
# # Card.create(name: "Воин веры", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral8_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
# # Card.create(name: "Воскрешение магии", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral9-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)

# # Card.create(name: "Гвейхир", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral10copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
# # Card.create(name: "Гончие тумана", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral11-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
# # Card.create(name: "Гордыня", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral12-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 5)
# # Card.create(name: "Грехи прошлого", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral13_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
# # Card.create(name: "Джеремиэль", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/neutral14copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 7)
# # Card.create(name: "Дронги", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral15copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 5)
# # Card.create(name: "Имперский трибун", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral16-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 6)
# # Card.create(name: "Индульгенция", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral17-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 10)

# # Card.create(name: "Келестиан", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral18copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
# # Card.create(name: "Клирик", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral19-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 1)
# # Card.create(name: "Крамольник", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral20copy1.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# # Card.create(name: "Крепость силы", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/neutral21-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 2)
# # Card.create(name: "Крыс Подземья", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral22copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Маг-заступник", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral23copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)

# # Card.create(name: "Меррингнан", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral25_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
# # Card.create(name: "Морфан", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral26copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 7)
# # Card.create(name: "Мышефикатор", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral27-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
# # Card.create(name: "Мышь", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral28-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 0)
# # Card.create(name: "Несущий чуму", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral29_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 6)
# # Card.create(name: "Отец-исповедник", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral30copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 5)

# # Card.create(name: "Портки тролля", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral31copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 2)
# # Card.create(name: "Привал!", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral32-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 2)
# # Card.create(name: "Проклятый маг", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral33_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
# # Card.create(name: "Серый кардинал", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral34_copy1.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 2)
# # Card.create(name: "Торговля головами", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral35-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Уловка чародея", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral36copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)

# # Card.create(name: "Учитель фехтования", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral37_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
# # Card.create(name: "Шаман варваров", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral38-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# # Card.create(name: "Шипохвост", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral39copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 5)
# # Card.create(name: "Эста", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral40copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)
# # Card.create(name: "Юркий гоблин", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral41-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)

# # p "Мультистихийные"

# # Card.create(name: "Вестник эльфов", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi___copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
# # Card.create(name: "Исследователь дна", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi5copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
# # Card.create(name: "Тирви", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi9copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
# # Card.create(name: "Эльфийский совет", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi10copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# # Card.create(name: "Замок Керсам", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi3copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 1)
# # Card.create(name: "Ночь тотемов", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi7copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 0)
# # Card.create(name: "Вода и камень", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi2copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)
# # Card.create(name: "Идол ужаса", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi4copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)
# # Card.create(name: "Разбудить тролля", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi8copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)

# # p "Герои"
# # Card.create(name: "Борсан", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/forest4copy.png", card_type: hero, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 0)
# # Card.create(name: "Зыхра", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi13_copy.png", card_type: hero, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 0)
# # Card.create(name: "Люминар", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark8-copy.png", card_type: hero, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 0)
# # Card.create(name: "Рык", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii15-copy.png", card_type: hero, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 0)
# # Card.create(name: "Хэсодэ", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp23_copy.png", card_type: hero, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 0)

# # Card.create(name: "Аарлин Аластар", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/forestcopy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
# # Card.create(name: "Грапли", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/swamp8copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
# # Card.create(name: "Дагдар", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/gorii6copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
# # Card.create(name: "Драккара", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/stepi9copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
# # Card.create(name: "Мастер Алвалинд", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/neutral24_copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
# # Card.create(name: "Пирс", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/pf-copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
# # Card.create(name: "Хиан", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/pf2-copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
# # Card.create(name: "Хундер Ульвер", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/forest20copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
# # Card.create(name: "Элевера", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/dark24copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)

p "[Расцвет Технологий]"
set = CardSet.create(name: "Расцвет Технологий")

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
	card_text: "Не может атаковать. Не может выступать защитником. Гибель: Ранить каждого персонажа противника на Х, где Х - количество ран на Прототипе SU-27. Тап: Ранить Прототип SU-27 на 1.",
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
	card_text: "Тап: Выстрел на 4; Оглушите Фузилера Братства",
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
	card_text: "(1)Тап: Покажите верхнюю карту вашей колоды; если это механизм, создайте Модуль подвижности или Защитный модуль; иначе вы можете положить эту карту под низ колоды и подготовить Золотой трон.",
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
	card_text: "Тап: Выстрел на 1. (3): Подготовьте Караульного, он получает +1 к выстрелам до конца хода.",
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
	card_text: "Тап: Получите (1) до конца хода. Когда вы разыгрываете существо, подготовьте Каринлину (один раз за ход).",
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
	card_text: "(2)Тап: Подготовьте персонажа (откройте этого персонажа, он может снова атаковать и действовать).",
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
	card_text: 'Тап: Выстрел на Х, где Х - сила удара Проекта "Янис Тауро".',
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

# Card.create(name: "name", rarity: "rare", card_url: "url", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# Card.create(name: "name", rarity: "rare", card_url: "url", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# Card.create(name: "name", rarity: "rare", card_url: "url", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# Card.create(name: "name", rarity: "rare", card_url: "url", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# Card.create(name: "name", rarity: "rare", card_url: "url", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# Card.create(name: "name", rarity: "rare", card_url: "url", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)