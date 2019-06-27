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
   number = rand(2)

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



  def url_segment_method
    @guess = params["guess"]
    number = rand(2)

    if @guess.to_i == number 
      @output = "You got it"
        elsif @guess.to_i > number 
          @output = "Too big"
          elsif @guess.to_i < number
            @output = "Too small"
    end 

    render 'url.json.jb'
  end 





def body_param_action 

      @username = params["username"]
      @passowrd = params["password"]

      if @username == "hugh" and @password == "swordfish"
        @output = "Valid credentials"
      else 
        @output = "Invalid credentials"
      end 

      render 'body.json.jb'


end 





def action 

    @guess = params["guess"]
   number = rand(2)

   @output = ""

    if @guess.to_i == number 
      @output = "You got it"
        elsif @guess.to_i > number 
          @output = "Too big"
          elsif @guess.to_i < number 
            @output = "Too small"
    end 


  render 'guess.json.jb'


end 
























end
