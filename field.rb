class Field

attr_accessor :type, :size, :yield

  @@fields = []
  total_harvest = 0

  corn = 20
  wheat = 30

  def initialize(field_type, field_size)
    @type = field_type
    @size = field_size
  end

  def self.harvest
    sum = 0
    @@fields.each do |field|
      sum += field.yield
    end
    @@yield_total +=sum
    puts "The farm's harvest is currently#{sum}."
  end

  def self.status
    @@yield_total
  end

  def self.relax
    puts "What a beautiful day to be a farmer. Where's my Steinbeck novel?"
  end

end

class Corn < Field

  def initalize (field_type, field_size)
    super(field_size, field_type)
    @yield = field_size * corn
  end

  def self.create(field_type, field_size)
    corn = Corn.new(field_type, field_size)
    @@fields << corn
  end


end

class Wheat < Field

  def initalize (field_type, field_size)
    super(field_size, field_type)
    @yield = field_size * wheat
  end

  def self.create(field_type, field_size)
    wheat = Wheat.new(field_type, field_size)
    @@fields << wheat
  end


end
