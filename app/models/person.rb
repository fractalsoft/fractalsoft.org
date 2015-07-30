# Person model
class Person < ActiveRecord::Base
  translates :introduction, :text
end
