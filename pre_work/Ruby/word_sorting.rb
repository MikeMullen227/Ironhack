def my_array(string)
string.gsub(/[.]/, "").split.sort do |a, b| a.upcase <=> b.upcase end
end
my_array("Have a nice day.")
