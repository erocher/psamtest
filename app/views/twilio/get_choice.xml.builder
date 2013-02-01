xml.instruct!
xml.Response do
  xml.Gather(:action => @post_to, :numDigits => 1) do  
    xml.Say "That code is for #@{clinic.name}."
    xml.Say "To report your inventory, press 1. To report recieving a shipment, press 2. If this is not your clinic, press 3."
  end
end

