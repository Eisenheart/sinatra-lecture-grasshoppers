class Coach
  @@list = ['John', 'Jason']

  def self.all
    @@list
  end

  def self.create(name)
    @@list << name
  end

end