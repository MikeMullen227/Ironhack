

color_array = ["indigo", "teal", "lilac", "periwinkle", "black", "baby blue", "teal"]


the_counting_machine = ColorCounter.new

p the_counting_machine.count_colors("indigo", color_array) == 1
p the_counting_machine.count_colors("periwinkle", color_array) == 1
p the_counting_machine.count_colors("teal", color_array) == 2

p the_counting_machine.count_colors("green", color_array) == 0
p the_counting_machine.count_colors("navy blue", color_array) == 0

caps_colors = color_array.map do |the_color|
	the_color.upcase
end

p caps_colors