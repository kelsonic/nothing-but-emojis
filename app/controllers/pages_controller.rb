require 'emoji'
class PagesController < ApplicationController

  def home
  end

  def convert
    emoji = Emoji.new
    convert_emoji = emoji.emoji_convert(params['text'])
    if request.xhr?
     render json: {response: convert_emoji}
    else
      p "Bye"
    end
  end
end
