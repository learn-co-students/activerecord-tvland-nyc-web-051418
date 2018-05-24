class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    first_name + " " + last_name
  end

  def list_roles
    chars = self.characters
    chars.map do |char|
      char.name + " - " + Show.find(char.show_id).name
    end
  end
end
