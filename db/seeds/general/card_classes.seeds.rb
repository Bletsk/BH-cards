DatabaseCleaner.clean_with(:truncation, only: %w(card_classes))
seed_file = Rails.root.join('db', 'seeds', 'general', 'card_classes.seeds.yml')
data = YAML.load_file(seed_file)

p 'Init card classes...'
CardClass.create(data)