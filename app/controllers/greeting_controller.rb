class GreetingController < ApplicationController
  def sayhello
    render html:"Hello!"
  end

  def saygoodmorning
    render html:"Good morning!"
  end
end
