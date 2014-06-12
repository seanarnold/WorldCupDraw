
teams = [
  "Brazil",
  "Croatia",
  "Mexico",
  "Cameroon",
  "Spain",
  "Netherlands",
  "Chile",
  "Australia",
  "Colombia",
  "Greece",
  "Cote dIvoire",
  "Japan",
  "Uruguay",
  "Costa Rica",
  "England",
  "Italy",
  "Switzerland",
  "Ecuador",
  "France",
  "Honduras",
  "Argentina",
  "Bosnia and Herzegovina",
  "Iran",
  "Nigeria",
  "Germany",
  "Portugal",
  "Ghana",
  "United States",
  "Belgium",
  "Algeria",
  "Russia",
  "Korea Republic",
]

teams_used = []

players = [
  "Player 1",
  "Player 2",
  "Player 3 etc"
]

player_team_match = []
TEAM_LENGTH = teams.length
players.each do |p|
  (TEAM_LENGTH/players.length.to_f).ceil.times do 
    if (teams.length > 0)
      team = teams.sample
      teams_used << team
      teams.delete(team)
    else
      team = teams_used.sample
      teams_used.delete(team)
    end
    player_team_match << {p =>  team}
  end
end

puts "\n\n🏆 ⚽ Welcome to the World Cup 2014 Sweepstake draw!! ⚽ 🏆\n\n"

"Drum roll".each_byte.each do |c|
  putc c.chr
end

3.times do 
  sleep(1)
  putc "."
end

puts "\n\n"

player_team_match.each do |p|
  puts "#{p.first[0]} draws #{p.first[1]}!"
  sleep(2)
end

puts "#{teams.length} teams left"