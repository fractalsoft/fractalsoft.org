class Job < ApplicationRecord
  extend CreateOrUpdateByKeysExtension
  translates :name
end
