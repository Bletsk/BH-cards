DatabaseCleaner.clean_with(:truncation, only: %w(factions))
seed_file = Rails.root.join('db', 'seeds', 'general', 'factions.seeds.yml')
data = YAML.load_file(seed_file)

p 'Init factions...'
Faction.create(data)