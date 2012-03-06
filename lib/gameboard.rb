class GameBoard
  def set_locations_cells(locations)
    @locations = locations
  end

  def check_yourself(guess)
    @guess = guess.to_i
    no_of_hits = 0
    no_of_hits += 1 if @locations.include?(@guess)
    puts hit_or_miss
    remove_target
    'kill' if @locations.empty?
  end

  private
  def hit_or_miss
    @locations.include?(@guess) ? 'Hit' : 'Miss'
  end
  def remove_target
    @locations.delete(@guess)
  end
end
