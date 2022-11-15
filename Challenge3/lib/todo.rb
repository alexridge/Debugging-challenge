def todo(string)
  if string.downcase.gsub(/'!£$%^&*:;#/, "").include?("todo") == true
    return string 
  else 
    return ""
  end
end 


