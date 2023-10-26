=begin
Write your code for the 'Luhn' exercise in this file. Make the tests in
`luhn_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/luhn` directory.
=end


class Luhn
    def self.valid?(text)
        text.gsub(/\s/,"")
        .tap { |s| return false unless s[/\A\d\d+\z/] }
        .chars
        .reverse
        .map.with_index { |d, i| i.odd? ? d.to_i * 2 : d.to_i  }
        .map { |d| d > 9 ? d - 9 : d }
        .sum % 10 == 0 
    end
end