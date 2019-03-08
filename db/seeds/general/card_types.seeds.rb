DatabaseCleaner.clean_with(:truncation, only: %w(card_types))
seed_file = Rails.root.join('db', 'seeds', 'general', 'card_types.seeds.yml')
data = YAML.load_file(seed_file)

p 'Init card types...'
CardType.create(data)