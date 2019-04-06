class hero
  attr_reader :name, :power, :biography
  
  HEROS = []
  
  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @biography = params[:biography]
    HEROS << self
  end
  
  def self.all
    HEROS
  end
  
  
end


class Pirate
  attr_reader :name, :weight, :height
  
  PIRATES = []
  
  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    PIRATES << self
  end
  
  def self.all
    PIRATES
  end
  
end