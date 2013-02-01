Twilio::Application.routes.draw do

match "/twilio/incoming" => "twilio#incoming"
match "/twilio/check" => "twilio#check"
math "/twilio/choice/:clinicID" => "twilio#choice" #this will have clinicID

end
