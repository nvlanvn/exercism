=begin
Write your code for the 'Twelve Days' exercise in this file. Make the tests in
`twelve_days_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/twelve-days` directory.
=end


=begin
define array 12 elements includes 12 sentences
sentences = ["a Partridge in a Pear Tree.", "two Turtle Doves"]
each 1 to 12 days

=end


class TwelveDays
    GIFTS = [
        "a Partridge in a Pear Tree.",
        "two Turtle Doves,",
        "three French Hens,",
        "four Calling Birds,",
        "five Gold Rings,",
        "six Geese-a-Laying,",
        "seven Swans-a-Swimming,",
        "eight Maids-a-Milking,",
        "nine Ladies Dancing,",
        "ten Lords-a-Leaping,",
        "eleven Pipers Piping,",
        "twelve Drummers Drumming,"
    ]
    ORDINALS = %w(first second third fourth fifth sixth seventh eighth ninth tenth eleventh twelfth)
    def self.song
        # run 1 to 12 days
        (1..12).map {
            |day|
            self.verse(day)
        }.join("\n\n")+"\n"
        # define function build a sentence
        # join sentence
        # add new line for last sentences
    end

    def self.verse(day)
        # get all gift from day 1 to day
        # revert gift
        # add and to last sentence if day > 1
        # build sentence
        gifts = GIFTS[0...day].reverse
        gifts[-1] = "and #{gifts[-1]}" if day > 1
        day_name = ORDINALS[day - 1]
        "On the #{day_name} day of Christmas my true love gave to me: #{gifts.join(' ')}"
    end
end