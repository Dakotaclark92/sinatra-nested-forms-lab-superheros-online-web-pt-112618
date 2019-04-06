class Hero
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