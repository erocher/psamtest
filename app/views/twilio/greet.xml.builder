xml.instruct!
xml.Response do
  xml.Gather(:action => @post_to, :numDigits => 3) do
    xml.Say "Welcome. Please enter your 3 digit clinic code."
  end
end

