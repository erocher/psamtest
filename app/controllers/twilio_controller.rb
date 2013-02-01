class TwilioController < ApplicationController
  BASE_URL = http://psamtest.herokuapp.com/twilio

#recieve call
  def incoming
    @post_to BASE_URL + "/check" 
    render :action => "greet.xml.builder", :layout => false
  end


#check if you have a clinic
  def check
    @clinic = Clinic.find(params['Digits'])
    if @clinic.nil?
      @post_to BASE_URL + "/check"
      render :action => no_clinic.xml.builder
    else
      @post_to BASE_URL + "/choice/#{@clinic.id}"
      render :action => get_choice.xml.builder
    end
  end
end
