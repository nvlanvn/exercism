class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def rate
    if @speed >= 10
      return 0.77
    elsif @speed >= 9
      return 0.8
    elsif @speed <= 8 and @speed >= 5
      return 0.9
    else
      return 1.0
    end
  end

  def production_rate_per_hour
    @speed * 221 * rate
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end
end
