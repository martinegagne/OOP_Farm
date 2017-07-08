class Farm

  attr_reader :field

  @@farm = []

  def add_field(field_type)
    @@farm << field_type
  end

end

class Field

  def harvest
  end

  def status (size, type, food_produced)
  end

  def relax
    puts ""
  end

end

class CornField < Field
  size =
  type =
end

class WheatField < Field
  size =
  type =
end
