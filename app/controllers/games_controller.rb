require 'json'
require 'open-uri'

class GamesController < ApplicationController
  def pages
  end

  def settings
    @letters = Array.new(10).map { |_| ('A'..'Z').to_a.sample }
  end

  def score
    word = params[:word]
    letters = params[:letters].downcase
    url = "https://wagon-dictionary.herokuapp.com/#{word}"
    word_exist = open(url).read
    result = JSON.parse(word_exist)

    if result['found']
      match = true
      word.chars.each do |letter|
        match = false unless letters.include? letter
        letters.remove(letter)
      end
      if match == true
        @final_message = "bg"
       else
        @final_message = "un peu moins tocard"
       end
    else
      @final_message = "tocard"
    end

    # if params[:word].value.include?.words && params[:word].value.include?.letters

    # end
  end
end
