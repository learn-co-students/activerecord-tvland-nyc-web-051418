class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    "#{Character.find(id).name} - #{Show.find(Character.find(id).show_id).name}"
  end

end
