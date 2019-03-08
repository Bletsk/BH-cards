DatabaseCleaner.clean_with(:truncation, only: %w(card_sets))
seed_file = Rails.root.join('db', 'seeds', 'general', 'card_sets.seeds.yml')
data = YAML.load_file(seed_file)

p 'Init card sets...'
CardSet.create(data)