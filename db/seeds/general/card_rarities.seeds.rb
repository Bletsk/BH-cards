DatabaseCleaner.clean_with(:truncation, only: %w(card_rarities))
seed_file = Rails.root.join('db', 'seeds', 'general', 'card_rarities.seeds.yml')
data = YAML.load_file(seed_file)

p 'Init card rarities...'
CardRarity.create(data)