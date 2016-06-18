class PagesController < ApplicationController
  def home
  end

  def convert
    emoji = Emoji.new
    if request.xhr?
      # emoji.convert(params[stuff])
    else

    end
  end
end
