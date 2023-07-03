class BirdCount
  def self.last_week
    lastweek_count = [0, 2, 5, 3, 7, 8, 4]
    return lastweek_count
  end

  def initialize(birds_per_day)
    @birds_per_day = birds_per_day
  end

  def yesterday
    return @birds_per_day[-2]
  end

  def total
    @total_birds = 0
    def total_count
      @birds_per_day.each do |birds_per_run|
        @total_birds = @total_birds + birds_per_run
      end
      yield
    end
    total_count do
      return @total_birds
    end
  end

  def busy_days
    @total_busydays = 0
    def busy_count
      @birds_per_day.each do |birds_per_run|
        if birds_per_run >= 5
          @total_busydays += 1
        end
      end    
      yield
    end
    busy_count do
      return @total_busydays
    end
  end

  def day_without_birds?
    return @birds_per_day.include?(0)
  end

end
