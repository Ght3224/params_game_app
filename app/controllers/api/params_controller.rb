class Api::ParamsController < ApplicationController

  def query 

    @name = params["name"].upcase


    if @name[0].upcase == "A"
      @name = 'Hey, your name starts with the first letter of the alphabet!'
    else 
      @name = @name 
    end 


    render "query_paramter.json.jb"
  end 



  def guess


   @guess = params["guess"]
   number = 14

   @output = ""

    if @guess.to_i == number 
        @output = "You got it"
        elsif @guess.to_i > number 
          @output = "Too big"
          elsif @guess.to_i < number 
            @output = "Too small"
    end 

    render 'guess_game.json.jb'


  end 

end
