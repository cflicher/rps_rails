class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

    # Your logic here

    # In the end, make sure you assign the correct values to the
    #   following two variables:

    @computer_move = ["rock", "paper", "scissors"].sample


    if @computer_move == @user_move
      @result = "Tied!!!"
    elsif @computer_move == "rock" && @user_move == "paper"
      @result = "Win!!!"
    elsif @computer_move == "rock" && @user_move == "scissors"
      @result = "Lose!!!"
    elsif @computer_move == "paper" && @user_move == "scissors"
      @result = "Win!!!"
    elsif @computer_move == "paper" && @user_move == "rock"
      @result = "Lose!!!"
    elsif @computer_move == "scissors" && @user_move == "rock"
      @result = "Win!!!"
    elsif @computer_move == "scissors" && @user_move == "paper"
      @result = "Lose!!!"
    end



    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
