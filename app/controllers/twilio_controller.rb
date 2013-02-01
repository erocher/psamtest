class TwilioController < ApplicationController
  def incoming
    render :action => "greet.xml.builder"
  end
end
