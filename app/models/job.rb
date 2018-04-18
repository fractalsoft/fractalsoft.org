class Job < ApplicationRecord
  extend CreateOrUpdateByKeysExtension
  translates :name, touch: true
end
