class Show < ActiveRecord::Base

  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network(network)
    new_network = Network.new(network)
    new_network.save
    self.network = new_network
    self.save
    new_network
  end

end
