class Character < ActiveRecord::Base

  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(show)
    new_show = Show.new(show)
    new_show.save
    self.show = new_show
    self.save
    new_show
  end

end
