# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Element.create(name: "Болото")
creature = CardType.create(name: "Существо")
hero = CardType.create(name: "Герой")

p "[Время Героев]"
CardSet.create(name: "Время Героев")

p "[Сила и Честь]"
CardSet.create(name: "Сила и Честь")

p "[Повелители Стихий]"
CardSet.create(name: "Повелители Стихий")

p "[Восхождение Тени]"
CardSet.create(name: "Восхождение Тени")

# Рожденные Бурей
p "[Рожденные Бурей]"
set = CardSet.create(name: "Рожденные Бурей")

p "Лес"
Card.create(name: "Антар", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-5-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
Card.create(name: "Бер", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-52-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 6)
Card.create(name: "Берегиня", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/lesa-53-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
Card.create(name: "Богл", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-54-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)
Card.create(name: "Вердант", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-55-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Ветвич", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/lesa-56-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 5)

Card.create(name: "Вожак сатиров", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/lesa-57-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 6)
Card.create(name: "Вьюрр", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-58-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
Card.create(name: "Дионея", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/lesa-510-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
Card.create(name: "Дубина", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/lesa-511-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 4)
Card.create(name: "Душистый хмель", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-512-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 0)
Card.create(name: "Единство", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/lesa-513-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)

Card.create(name: "Жагна", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi59-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 5)
Card.create(name: "Золото лепреконов", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-514-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 1)
Card.create(name: "Из ростка - жизнь", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/lesa-516-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Илу", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/lesa-517-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
Card.create(name: "Ильфари", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/multi510-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 4)
Card.create(name: "Лепрекон", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/lesa-518-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)

Card.create(name: "Ловушка леприконов", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/lesa-519-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 1)
Card.create(name: "Ловчий", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/lesa-520-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Маг забвения", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/lesa-521-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)
Card.create(name: "Марголок", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-522-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
Card.create(name: "Меркита", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/lesa-523-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
Card.create(name: "Небесная стража", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/lesa-524-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)

Card.create(name: "Обряд цветения", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-525-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Онод", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/lesa-526-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 7)
Card.create(name: "Плодородие", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-527-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 0)
Card.create(name: "Подготовка лучников", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/lesa-528-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
Card.create(name: "Подлунник", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-529-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 5)
Card.create(name: "Подмога", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/lesa-530-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)

Card.create(name: "Разведка", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/lesa-531-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
Card.create(name: "Ришалис", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-532-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)
Card.create(name: "Рог единорога", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/lesa-533-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Рогаль", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-534-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
Card.create(name: "Рузарх", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/lesa-535-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 8)
Card.create(name: "Снежный циклоп", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-536-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 5)

Card.create(name: "Снурли", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-537-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
Card.create(name: "Странствующий друид", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-538-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Стычка", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-539-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
Card.create(name: "Сумка лепрекона", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/lesa-540-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 4)
Card.create(name: "Фея леса", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/lesa-541-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
Card.create(name: "Фиал исцеления", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-542-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 1)

Card.create(name: "Хмарник", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-544-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
Card.create(name: "Читающая небо", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/lesa-545-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)
Card.create(name: "Эльф-всадник", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-546-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Эльф-лазутчик", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-547-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)
Card.create(name: "Эхин", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/lesa-548-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 5)

p "Горы"
Card.create(name: "Ай-суру", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-5-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
Card.create(name: "Алмазный алтарь", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/gorii-52-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
Card.create(name: "Баграх", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-53-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 5)
Card.create(name: "Бешенство", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-NEW-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 2)
Card.create(name: "Бугур", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-56-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
Card.create(name: "Буревестник", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-57-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)

Card.create(name: "Вараэль", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/gorii-58-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
Card.create(name: "Варг", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-59-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Ватажник", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-510-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Вельтар", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/gorii-511-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)
Card.create(name: "Визит к броннику", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-512-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)
Card.create(name: "Вождь снорлингов", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/gorii-513-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 5)

Card.create(name: "Вукула", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/gorii-514-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 5)
Card.create(name: "Гарпия", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-515-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)
Card.create(name: "Гном", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-516-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
Card.create(name: "Гном-исследователь", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-517-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Гном-рейдер", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/gorii-518-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)
Card.create(name: "Доспех вождя", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/gorii-519-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)

Card.create(name: "Дух горы", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/gorii-520-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)
Card.create(name: "Заморозка", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-521-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Из клинка - арсенал", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/gorii-522-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
Card.create(name: "Иккол", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-523-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
Card.create(name: "Исварс", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-524-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Кольцо мага", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/gorii-525-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 2)

Card.create(name: "Ледяной голем", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-526-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
Card.create(name: "Молотобоец", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-528-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
Card.create(name: "Нигде не скрыться", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/gorii-530-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 5)
Card.create(name: "Обряд грома", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-531-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)
Card.create(name: "Оледенение", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-532-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 4)
Card.create(name: "Оседлавший лавину", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/gorii-533-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)

Card.create(name: "Подготовить волшбу", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/gorii-534-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 5)
Card.create(name: "Предвидение", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-535-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 1)
Card.create(name: "Разорение", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/gorii-536-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
Card.create(name: "Редья", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/gorii-537-NEW.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 3)
Card.create(name: "Рожденная бурей", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/gorii-538-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 2)
Card.create(name: "Рунная чародейка", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/gorii-539-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)

Card.create(name: "Скальд", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/gorii-540-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)
Card.create(name: "Сквозь бурю", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/gorii-541-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
Card.create(name: "Сокрушающий удар", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/gorii-542-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 2)
Card.create(name: "Трескучий мороз", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/gorii-543-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 0)
Card.create(name: "Хранитель бури", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/gorii-544-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Шар молний", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/gorii-545-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)

Card.create(name: "Шаровая молния", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/gorii-546-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
Card.create(name: "Эйвинд", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-547-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
Card.create(name: "Электрификация", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-548-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)

p "Тьма"

Card.create(name: "Адский пес", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-5-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
Card.create(name: "Бросок головой", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-52-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 1)
Card.create(name: "Вампир-прислужник", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-53-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
Card.create(name: "Ведьма Пустоши", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/dark-54-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Венайра", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/dark-55-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)
Card.create(name: "Венат", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/dark-56-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)

Card.create(name: "Вербовка павших", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-57-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
Card.create(name: "Висс", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-58-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
Card.create(name: "Воины Морла", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/dark-59-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 8)
Card.create(name: "Врата обреченных", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/dark-510-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
Card.create(name: "Вторая жизнь", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/dark-511-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 1)
Card.create(name: "Выпить жизнь", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-512-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 2)

Card.create(name: "Гингасса", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-513-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 4)
Card.create(name: "Демон бессилия", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-514-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 5)
Card.create(name: "Демон боли", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi55-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
Card.create(name: "Демон гнева", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/dark-515-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 5)
Card.create(name: "Демонотиватор", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/dark-516-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 1)
Card.create(name: "Дзингор", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-517-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)

Card.create(name: "Древний чемпион", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/dark-518-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
Card.create(name: "Дух неудачи", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-519-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 1)
Card.create(name: "Из смерти - ничто", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/dark-520-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 5)
Card.create(name: "Изгнанный дух", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-521-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
Card.create(name: "Инициация слуа", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/dark-522-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
Card.create(name: "Иссушение", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-NEW-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)

Card.create(name: "Йоро", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/dark-524-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)
Card.create(name: "Каниферрон", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/dark-526-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 6)
# TODO: добавить картинку с подтипом
Card.create(name: "Кара", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-527-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)
Card.create(name: "Костяная булава", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/dark-528-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
Card.create(name: "Костяной голем", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-529-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
Card.create(name: "Костяной танцор", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-530-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 2)

Card.create(name: "Кровавый псарь", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-531-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Лефран", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/dark-532-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)
Card.create(name: "Лич-библиотекарь", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/multi511-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
Card.create(name: "Ловчая тьмы", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/dark-533-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Маскировка", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-534-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
Card.create(name: "Моррвильский кровосос", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/dark-535-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 4)

Card.create(name: "Обряд наказания", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-537-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 2)
Card.create(name: "Падальщик", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/dark-538-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
Card.create(name: "Палач", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/dark-539-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Пляска теней", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/dark-540-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 3)
Card.create(name: "Пожиратель душ", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-541-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
Card.create(name: "Притаившаяся погибель", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/dark-542-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 5)

Card.create(name: "Проклятье", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-543-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 1)
Card.create(name: "Снять стражу", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/dark-544-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
# TODO: добавить картинку с подтипом
Card.create(name: "Утянуть в бездну", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/dark-545-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 5)
Card.create(name: "Фомор", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/dark-546-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 1)
Card.create(name: "Шакс", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-547-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)

p "Болото"

Card.create(name: '"Радушный" прием', rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-537-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)
Card.create(name: "Акванит-громила", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/swamp-5-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
Card.create(name: "Аниаг", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-52-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 5)
Card.create(name: "Архелон", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/swamp-53-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 6)
Card.create(name: "Ассасинация вайлов", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-54-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
Card.create(name: "Аярд", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/swamp-55-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 1)

Card.create(name: "Божественное просветление", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/swamp-56-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 0)
Card.create(name: "Бокор", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/swamp-57-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Бриус", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-58-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Бугай", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/swamp-59-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 5)
Card.create(name: "Бумбол", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-510-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
Card.create(name: "Владыка боли", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/swamp-511-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)

Card.create(name: "Вождь топей", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/swamp-512-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 4)
Card.create(name: "Возмездие Архааля", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-513-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
Card.create(name: "Вопляк", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/swamp-514-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)
Card.create(name: "Восстановление", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-515-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 1)
Card.create(name: "Дублер", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/swamp-517-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 5)
Card.create(name: "Задурманить голову", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/swamp-518-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 6)

Card.create(name: "Из дымки - туман", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/swamp-519-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
Card.create(name: "Изгоняющий скверну", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/swamp-520-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
Card.create(name: "Исполнение желаний", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/swamp-521-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
Card.create(name: "Колыбельная подземья", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-522-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)
Card.create(name: "Лич-библиотекарь", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/multi511-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
Card.create(name: "Ловец молний", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-523-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)

Card.create(name: "Лутунни", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-524-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
Card.create(name: "Миролюбие", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/swamp-526-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
Card.create(name: "Моа", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-527-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
Card.create(name: "Наброситься", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-528-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Обращение", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/swamp-530-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
Card.create(name: "Одинокий призрак", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/swamp-531-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)

Card.create(name: "Ослепление", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-532-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
Card.create(name: "Отравленный кинжал", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/swamp-533-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
Card.create(name: "Отчаянный рывок", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/swamp-534-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
Card.create(name: "Оши-хоно", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/swamp-535-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 1)
Card.create(name: "Перст Архааля", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-536-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Плавучий остров", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/multi516-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)

Card.create(name: "Развеять", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-538-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
Card.create(name: "Спокойные воды", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/swamp-539-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
Card.create(name: "Спрятать в мешок", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-NEW4-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Тайновязь", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-541-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
Card.create(name: "Таугарт", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-542-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
Card.create(name: "Увалень", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/swamp-543-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)

Card.create(name: "Ужас болот", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-544-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 4)
Card.create(name: "Феерический обряд", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-545-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
Card.create(name: "Хунган", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-546-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
Card.create(name: "Шаман гоблинов", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/swamp-547-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
Card.create(name: "Шар тины", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/swamp-548-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)

p "Степи"

Card.create(name: "Адан", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-5-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
Card.create(name: "Адепт пламени", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-52-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 1)
Card.create(name: "Аколит Дзара", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/stepi-53-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
Card.create(name: "Берсерк Братства", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/stepi-54-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
Card.create(name: "Бешеный орк", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-55-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Боевая ярость", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-56-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)

Card.create(name: "Буйный воитель", rarity: "uncommon", card_url: "http://berserk.ru/image/data/stepi-57-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 5)
Card.create(name: "Волки пустоши", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/stepi-58-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Воспламенение", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/stepi-59-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 8)
Card.create(name: "Второе дыхание", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/stepi-510-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 4)
Card.create(name: "Гремлины", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-511-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)
Card.create(name: "Двойной ожог", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/stepi-512-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)

Card.create(name: "Дуэлянт", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-513-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
Card.create(name: "Жрец змея", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-514-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
Card.create(name: "Заводной ящер", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-515-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Засуха", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/stepi-516-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
Card.create(name: "Игнис", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-517-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 5)
Card.create(name: "Из искры - пламя", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/stepi-518-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)

Card.create(name: "Кандийский чародей", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/stepi-519-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
Card.create(name: "Капеллан", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-520-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
Card.create(name: "Клинок Илле", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/stepi-521-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
Card.create(name: "Копьеметатели", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/stepi-523-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
Card.create(name: "Крылан", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/stepi-524-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 1)
Card.create(name: "Кулхан", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-525-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)

Card.create(name: "Купец", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-526-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
Card.create(name: "Кшар", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-527-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
Card.create(name: "Мастер клинка", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-529-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
Card.create(name: "Меткий орк", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/stepi-531-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 6)
Card.create(name: "Молодой орк", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-532-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)
Card.create(name: "Накамлать", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-533-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)

Card.create(name: "Нгор", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-534-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 5)
Card.create(name: "Обряд защиты", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-535-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
Card.create(name: "Охотники за реликвиями", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/stepi-536-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
Card.create(name: "Плетение огня", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-537-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)
Card.create(name: "Посвященный Дзара", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/stepi-538-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 5)
Card.create(name: "Призывательница Дзара", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/stepi-539-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)

Card.create(name: "Протекция", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/stepi-540-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
Card.create(name: "Пылающая стрела", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-541-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 1)
Card.create(name: "Солнечный грифон", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/stepi-542-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Степной волколак", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/stepi-543-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
Card.create(name: "Стилет", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/stepi-544-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 1)
Card.create(name: "Тамия", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/stepi-545-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)

Card.create(name: "Уязвимость", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-546-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
Card.create(name: "Шар бури", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/stepi-547-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
Card.create(name: "Яйцо дракона", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/stepi-548-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)

p "Нейтралы"

Card.create(name: "Адепт пустоты", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/neutral-5-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
Card.create(name: "Альмагост", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-52-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
Card.create(name: "Ангел возмездия", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral-53-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 4)
Card.create(name: "Ангел милосердия", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral-54-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
Card.create(name: "Ангел равновесия", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral-55-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
Card.create(name: "Арлекин", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-56-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)

Card.create(name: "Ассасин храма", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral-57-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
Card.create(name: "Ашалла", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral-58-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
Card.create(name: "Багрянник", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-59-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 6)
Card.create(name: "Барака", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral-510-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Барбант", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-511-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
Card.create(name: "Боевой носорог", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-512-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 6)

Card.create(name: "Боевые мотивы", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-513-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 1)
Card.create(name: "Борг", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-514-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 7)
Card.create(name: "Бретер", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-515-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)
Card.create(name: "Броненосец", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-516-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
Card.create(name: "Буйвол", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral-517-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 6)
Card.create(name: "Бывалый гоблин", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-518-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)

Card.create(name: "Властелин хаоса", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-519-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 7)
Card.create(name: "Вожак прайда", rarity: "rare", card_url: "http://berserk.ru/image/data/neutral-520-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
Card.create(name: "Воин Тоа-дана", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral-521-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
Card.create(name: "Вор", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-522-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
Card.create(name: "Галливестпин", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral-523-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
Card.create(name: "Гаррота", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral-524-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 5)

Card.create(name: "Гатарнус", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-525-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 0)
Card.create(name: "Гвеор", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-526-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
Card.create(name: "Гладиатор", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral-527-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 7)
Card.create(name: "Голем-дозорный", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-528-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 1)
Card.create(name: "Горт", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral-529-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Дархан", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-530-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 6)

Card.create(name: "Демон-привратник", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/neutral-531-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 6)
Card.create(name: "Дозор Святолесья", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral-532-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 5)
Card.create(name: "Драйдер", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral-533-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 5)
Card.create(name: "Дриада", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral-534-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
Card.create(name: "Дрянное пойло", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral-535-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)
Card.create(name: "Живущий в тумане", rarity: "uncommon", card_url: "http://berserk.ru/image/data/neutral-536-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)

Card.create(name: "Жрица Дзаза", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-537-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
Card.create(name: "Заступник", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/neutral-538-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 6)
Card.create(name: "Зверь Рунда", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-539-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 5)
Card.create(name: "Золотой голем", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-540-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 10)
Card.create(name: "Из тени - на свет", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral-541-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)
Card.create(name: "Карта сокровищ", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral-542-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)

Card.create(name: "Костер инквизиции", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral-543-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 4)
Card.create(name: "Костоглод", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-544-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
Card.create(name: "Крондак", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-545-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 1)
Card.create(name: "Крыс Лихолесья", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-546-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
Card.create(name: "Крыс Темноводья", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-547-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
Card.create(name: "Ландскнехт", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral-548-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)

Card.create(name: "Микаэль", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/neutral-549-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 6)
Card.create(name: "Море по колено", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-NEW-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 3)
Card.create(name: "Наемник-ветеран", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-551-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
Card.create(name: "Облачница", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral-553-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
Card.create(name: "Орикс", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-554-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
Card.create(name: "Орк-ведун", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-555-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 1)

Card.create(name: "Орк-ловчий", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-556-copy.png", card_type: creature, dropped_from_booster: false, card_set_id: set.id, rate: 4, cost: 5)
Card.create(name: "Отец-экзекутор", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-557-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Отшельник", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-558-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
Card.create(name: "Паладин Братства", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/neutral-559-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 5)
Card.create(name: "Паладин Сеггера", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral-560-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 6)
Card.create(name: "Паломник", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-561-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)

Card.create(name: "Пегас", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral-562-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
Card.create(name: "Первоэлемент", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral-563-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
Card.create(name: "Подсмотреть", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-564-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 2)
Card.create(name: "Преторианец", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-565-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
Card.create(name: "Приручить смерть", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-566-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 1)
Card.create(name: "Рысь", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-567-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)

Card.create(name: "Серая эльфийка", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral-568-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
Card.create(name: "Содалис", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-569-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Сокрушающие удары", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral-570-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
Card.create(name: "Спрайт", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral-571-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 2)
Card.create(name: "Страж Бренора", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral-572-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Тауматург", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral-573-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)

Card.create(name: "Ульфсарк", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-574-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
Card.create(name: "Урайон", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral-575-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
Card.create(name: "Хранители тумана", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-576-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
Card.create(name: "Хронист", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral-577-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Чумной легионер", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/neutral-578-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
Card.create(name: "Шерамма", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-579-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)

Card.create(name: "Шерид", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral-580-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Экклезиарх", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral-581-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 4)
Card.create(name: "Эртания", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral-582-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)


p "Мультистихийные"
Card.create(name: "Бледный тролль", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi52-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Дупликация жизни", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/multi56-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
Card.create(name: "Дух оруженосца", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/multi58-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 1)
Card.create(name: "Ловкость рук", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi512-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
Card.create(name: "Пламя жизни", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi517-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
Card.create(name: "Цикл перерождения", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/multi521-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 1)

Card.create(name: "Анализ эфира", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/multi51-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 5)
Card.create(name: "Волчий всадник", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi53-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Горный великан", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/multi54-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 5)
Card.create(name: "Дупликация мыслей", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/multi57-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 4)
Card.create(name: "Предательство оруженосца", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi519-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
Card.create(name: "Разбомбить", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi520-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 5)

Card.create(name: "Обольщение", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/multi513-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 5)
Card.create(name: "Оскверненный разум", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi515-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Омышение", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi514-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)

p "Герои"
Card.create(name: "Глемсель", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/lesa-59-copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
Card.create(name: "Зумб", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/lesa-515-copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
Card.create(name: "Понита", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/multi518-copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
Card.create(name: "Хирви", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/lesa-543-copy.png", card_type: hero, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 0)
Card.create(name: "Балеог", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/gorii-54-copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
Card.create(name: "Манн", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii-527-copy.png", card_type: hero, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 0)

Card.create(name: "Ниара", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/gorii-529-copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
Card.create(name: "Кальвина", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/dark-525-copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
Card.create(name: "Найрита", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark-536-copy.png", card_type: hero, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 0)
Card.create(name: "Элмор", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/dark-548-copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
Card.create(name: "Горуг", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/swamp-516-copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
Card.create(name: "Мерег", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp-525-copy.png", card_type: hero, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 0)

Card.create(name: "Невтида", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/swamp-529-copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
Card.create(name: "Командующий Эрих", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/stepi-522-copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
Card.create(name: "Линнет", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi-528-copy.png", card_type: hero, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 0)
Card.create(name: "Мериса", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/stepi-530-copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
Card.create(name: "Наместник Виг", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/neutral-552-copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)

# Грехи Прошлого
p "[Грехи Прошлого]"
set = CardSet.create(name: "Грехи Прошлого");

p "Лес"
Card.create(name: "Ангешти", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/forest2copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 6)
Card.create(name: "Бокан", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/forest3_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 1)
Card.create(name: "Быкоглавец", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/forest5_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
Card.create(name: "Ведающий тропы", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/forest6_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 5)
Card.create(name: "Воин Жлезодрева", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/forest7-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
Card.create(name: "Воительница забвения", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/forest8_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Воля Аластара", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/forest9copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
Card.create(name: "Гвардия Таликса", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/forest10_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Грост", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/forest11-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 8)
Card.create(name: "Древесный птицеед", rarity: "rare", card_url: "http://berserk.ru/image/data/forest12_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 5)
Card.create(name: "Живой лук", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/forest13copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 1)
Card.create(name: "Карнаж", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/forest14-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
Card.create(name: "Мелиада", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/forest15-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Мурини", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/forest16_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 7)
Card.create(name: "Сиротки Кронга", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/forest17_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
Card.create(name: "Спустить зверя!", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/forest18copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
Card.create(name: "Фиал предвидения", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/forest19-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
Card.create(name: "Чревоугодие", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/forest21-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
Card.create(name: "Шар плюща", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/forest22-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
Card.create(name: "Эльфийский охотник", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/forest23copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)
Card.create(name: "Эльфийский следопыт", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/forest24copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
Card.create(name: "Ящерка", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/forest25_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)

p "Горы"
Card.create(name: "Альфин", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/gorii-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 5)
Card.create(name: "Берсерк клана волка", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/gorii2-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Бронник клана Камня", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/gorii3copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 4)
Card.create(name: "Бьорнриттер", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/gorii4copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Гнев", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/gorii5-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Дейра", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii7-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 4)
Card.create(name: "Жрица бури", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/gorii8-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)

Card.create(name: "Йети", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii9-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 1)
Card.create(name: "Лень", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/gorii10-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
Card.create(name: "Неудачное ограбление", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii11-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
Card.create(name: "Пьяная драка", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/gorii12-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
Card.create(name: "Раздвоенная молния", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/gorii13_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Раздумия", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii14-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)

Card.create(name: "Собрать стаю", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/gorii16-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 4)
Card.create(name: "Таэр", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii17copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 6)
Card.create(name: "Тельфарра", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/gorii18-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
Card.create(name: "Фиал энергии", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii19-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
Card.create(name: "Халланский голем", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii20copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
Card.create(name: "Хладник", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii21-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)

Card.create(name: "Хозяйка лавин", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii22_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
Card.create(name: "Шар удачи", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/gorii23-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 2)
Card.create(name: "Эльдринг", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii24copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)

p "Тьма"
Card.create(name: "Абизу", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/dark_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 6)
Card.create(name: "Алхимия скрытности", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/dark2-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 1)
Card.create(name: "Брат по крови", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/dark3copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 2)
Card.create(name: "Вечная служба", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark4_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
Card.create(name: "Воля Танатоса", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/dark5copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 5)
Card.create(name: "Зависть", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/dark6-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Крухх", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark7copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)
Card.create(name: "Мерзкое варево", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi6copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 6)

Card.create(name: "Месть павших", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark9-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
Card.create(name: "Немая стража", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark10_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 1)
Card.create(name: "Ньярли", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/dark11copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 5)
Card.create(name: "Осквернитель", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/dark12-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
Card.create(name: "Прокаженный", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark13_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 2)
Card.create(name: "Сиантия", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark14-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 5)

Card.create(name: "Скользящая в сумерках", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/dark15-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
Card.create(name: "Сожжение души", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark16copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
Card.create(name: "Соултрад", rarity: "ultra", card_url: "http://berserk.ru/image/data/berserk/dark17-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 3)
Card.create(name: "Фанатик", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark18copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
Card.create(name: "Харон", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/dark19_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 8)
Card.create(name: "Хозяин склепа", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/dark21_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)

Card.create(name: "Хтон", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark20copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 6)
Card.create(name: "Шар проклятия", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/dark22copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
Card.create(name: "Экстрактор душ", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark23copy.png", card_type: creature, dropped_from_booster: false, card_set_id: set.id, rate: 5, cost: 2)

p "Болото"
Card.create(name: "Акванит-жрец", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/swamp-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 3)
Card.create(name: "Блуд", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/swamp2-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 2)

Card.create(name: "Вайл", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp3-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 1)
Card.create(name: "Вестник Архааля", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/swamp4copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
Card.create(name: "Взлом эфира", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp5copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
Card.create(name: "Воля Вудли", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp6_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 2)
Card.create(name: "Голодные духи", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/swamp7_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 4)
Card.create(name: "Исхар", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/swamp9-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 3)

Card.create(name: "Карбагаш", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp10-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 5)
Card.create(name: "Клинок Ихвэ", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/swamp11copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 3)
Card.create(name: "Крабопаук", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp12copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
Card.create(name: "Маг Разана", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp13-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
Card.create(name: "Мистик Алгниса", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/swamp14-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 6)
Card.create(name: "Опутать плющом", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp15-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)

Card.create(name: "Плеть Архааля", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp16-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
Card.create(name: "Повелевающий", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/swamp17-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
Card.create(name: "Проповедник", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp18copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 2)
Card.create(name: "Старец Ихвэ", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/swamp19copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
Card.create(name: "Трясинщик", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp20_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)
Card.create(name: "Фиал порчи", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp21-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)

Card.create(name: "Хранитель руин", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/swamp22_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 4)
Card.create(name: "Ядовитый туман", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/swamp24_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)

p "Степи"
Card.create(name: "Алчность", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/stepi-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)

Card.create(name: "Алчущее пламя", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi2copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 3)
Card.create(name: "Альдис", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/stepi3copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
Card.create(name: "Аркенай", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi4-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Воительница Аккении", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi5_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
Card.create(name: "Гонец Аккении", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi6-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)
Card.create(name: "Держать позицию!", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi7-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)

Card.create(name: "Дочь ветра", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/stepi8_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)
Card.create(name: "Дух чародея", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/stepi10copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 9)
Card.create(name: "Дэв", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi11-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
Card.create(name: "Зачинщик", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi12-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)
Card.create(name: "Искажение реальности", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/stepi14copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 0)
Card.create(name: "Маг щита", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi15_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 4)

Card.create(name: "Наездник на виверне", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/stepi16-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
Card.create(name: "Огр-степняк", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/stepi17_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 5)
Card.create(name: "Песчаный всадник", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi18-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "По коням!", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi19copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)
Card.create(name: "Повелитель псов", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/stepi20_copy1.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 5)
Card.create(name: "Рыцарь арьергарда", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/stepi21-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)

Card.create(name: "Серия ударов", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/stepi22copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
Card.create(name: "Фарсат", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/stepi23-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 6)
Card.create(name: "Фолиант алчущих", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/stepi24copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)

p "Нейтралы"
Card.create(name: "Амазонка", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutralcopy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
Card.create(name: "Ангел познания", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/neutral2_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 6)
Card.create(name: "Арнц", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral3-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 5)
Card.create(name: "Варахиэль", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral4_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)

Card.create(name: "Вестник битв", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral5_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
Card.create(name: "Вечный рыцарь", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral6-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
Card.create(name: "Вивисектор", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral7copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 8)
Card.create(name: "Воин веры", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral8_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
Card.create(name: "Воскрешение магии", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral9-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)

Card.create(name: "Гвейхир", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral10copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
Card.create(name: "Гончие тумана", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral11-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
Card.create(name: "Гордыня", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral12-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 5)
Card.create(name: "Грехи прошлого", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral13_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
Card.create(name: "Джеремиэль", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/neutral14copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 7)
Card.create(name: "Дронги", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral15copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 5)
Card.create(name: "Имперский трибун", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral16-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 6)
Card.create(name: "Индульгенция", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral17-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 10)

Card.create(name: "Келестиан", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral18copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
Card.create(name: "Клирик", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral19-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 1)
Card.create(name: "Крамольник", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral20copy1.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
Card.create(name: "Крепость силы", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/neutral21-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 2)
Card.create(name: "Крыс Подземья", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral22copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Маг-заступник", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral23copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)

Card.create(name: "Меррингнан", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral25_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
Card.create(name: "Морфан", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral26copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 7)
Card.create(name: "Мышефикатор", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral27-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
Card.create(name: "Мышь", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral28-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 0)
Card.create(name: "Несущий чуму", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral29_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 6)
Card.create(name: "Отец-исповедник", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral30copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 5, cost: 5)

Card.create(name: "Портки тролля", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral31copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 2)
Card.create(name: "Привал!", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/neutral32-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 2)
Card.create(name: "Проклятый маг", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral33_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 2)
Card.create(name: "Серый кардинал", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral34_copy1.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 2)
Card.create(name: "Торговля головами", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral35-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Уловка чародея", rarity: "rare", card_url: "http://berserk.ru/image/data/Берсерк/neutral36copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 2)

Card.create(name: "Учитель фехтования", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral37_copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 3)
Card.create(name: "Шаман варваров", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral38-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 2)
Card.create(name: "Шипохвост", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral39copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 5)
Card.create(name: "Эста", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral40copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 2, cost: 1)
Card.create(name: "Юркий гоблин", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/neutral41-copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)

p "Мультистихийные"

Card.create(name: "Вестник эльфов", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi___copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
Card.create(name: "Исследователь дна", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi5copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 4)
Card.create(name: "Тирви", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi9copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 4)
Card.create(name: "Эльфийский совет", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi10copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
Card.create(name: "Замок Керсам", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi3copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 1)
Card.create(name: "Ночь тотемов", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi7copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 0)
Card.create(name: "Вода и камень", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi2copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)
Card.create(name: "Идол ужаса", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi4copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)
Card.create(name: "Разбудить тролля", rarity: "uncommon", card_url: "http://berserk.ru/image/data/Берсерк/multi8copy.png", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 4, cost: 3)

p "Герои"
Card.create(name: "Борсан", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/forest4copy.png", card_type: hero, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 0)
Card.create(name: "Зыхра", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/stepi13_copy.png", card_type: hero, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 0)
Card.create(name: "Люминар", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/dark8-copy.png", card_type: hero, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 0)
Card.create(name: "Рык", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/gorii15-copy.png", card_type: hero, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 0)
Card.create(name: "Хэсодэ", rarity: "common", card_url: "http://berserk.ru/image/data/Берсерк/swamp23_copy.png", card_type: hero, dropped_from_booster: true, card_set_id: set.id, rate: 1, cost: 0)

Card.create(name: "Аарлин Аластар", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/forestcopy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
Card.create(name: "Грапли", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/swamp8copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
Card.create(name: "Дагдар", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/gorii6copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
Card.create(name: "Драккара", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/stepi9copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
Card.create(name: "Мастер Алвалинд", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/neutral24_copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
Card.create(name: "Пирс", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/pf-copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
Card.create(name: "Хиан", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/pf2-copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
Card.create(name: "Хундер Ульвер", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/forest20copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)
Card.create(name: "Элевера", rarity: "ultra", card_url: "http://berserk.ru/image/data/Берсерк/dark24copy.png", card_type: hero, dropped_from_booster: false, card_set_id: set.id, rate: 1, cost: 0)

# Рожденные Бурей
p "[Расцвет Технологий]"
set = CardSet.create(name: "Расцвет Технологий")

# Card.create(name: "name", rarity: "rare", card_url: "url", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# Card.create(name: "name", rarity: "rare", card_url: "url", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# Card.create(name: "name", rarity: "rare", card_url: "url", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# Card.create(name: "name", rarity: "rare", card_url: "url", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# Card.create(name: "name", rarity: "rare", card_url: "url", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)
# Card.create(name: "name", rarity: "rare", card_url: "url", card_type: creature, dropped_from_booster: true, card_set_id: set.id, rate: 3, cost: 3)