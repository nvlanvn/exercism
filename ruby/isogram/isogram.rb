=begin
Write your code for the 'Isogram' exercise in this file. Make the tests in
`isogram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isogram` directory.
=end


class Isogram
    def self.isogram?(word)
        if word.empty?
            return true
        end
        @is_isogram = true
        @isogram = []
        @new_word = word.split(/\s|\-/).map { |c| c.downcase }.join
        @new_word.chars.each { |character| if @isogram.include?(character) then @is_isogram = false else @isogram.push(character) end  }
        return @is_isogram
    end
end



