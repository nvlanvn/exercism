=begin
Write your code for the 'Tournament' exercise in this file. Make the tests in
`tournament_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/tournament` directory.
=end

# define class
# define function
# create hash with team name is key includes { win, drawn, lost }
# sort point , team name

class Tournament
    def self.tally(input)
      headers = ['Team', 'MP', 'W', 'D',  'L', 'P']
      str = format_team(headers)
      teams = Hash.new
      input.split("\n").map do |match|
        home, away, result = match.split(";")
        teams[home] =  { mp: 0, w: 0, d: 0, l: 0, p: 0 } if teams[home].nil?
        teams[away] =  { mp: 0, w: 0, d: 0, l: 0, p: 0 } if teams[away].nil?
        teams[home][:mp] += 1
        teams[away][:mp] += 1
        case result
          when 'win'
            teams[home][:w] += 1
            teams[home][:p] += 3
            teams[away][:l] +=1
          when 'draw'
            teams[home][:d] += 1
            teams[home][:p] += 1
            teams[away][:d] += 1
            teams[away][:p] += 1
          else
            teams[home][:l] += 1
            teams[away][:w] += 1
            teams[away][:p] += 3
        end
      end
      teams.sort_by {
        |k, v|
        [-v[:p], k]
      }.each {
        |k, v|
        tmp = [ k, v[:mp], v[:w], v[:d], v[:l], v[:p]]
        str << self.format_team(tmp)
      }
      str
    end

    def self.format_team(array)
        sprintf "%-30s | %2s | %2s | %2s | %2s | %2s\n", *array
    end
end

puts(Tournament.tally("Allegoric Alaskans;Blithering Badgers;win
Blithering Badgers;Courageous Californians;win
Courageous Californians;Allegoric Alaskans;loss"))