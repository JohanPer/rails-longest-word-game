class GamesController < ApplicationController
  def new
    @random_letters = 10.times.map { ('a'..'z').to_a[rand(26)] }
  end

  def score
    @word = params[:word]
    @letters = params[:letters]
    @word.split('').each do |word_letter|
      @score = "Sorry but TEST can't be built ou of #{@letters}" unless @letters.include?(word_letter)
    end
  end
end
