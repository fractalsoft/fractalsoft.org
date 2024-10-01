# frozen_string_literal: true

Rails.root.glob('db/seeds/*.rb').each do |seed|
  load seed
end
