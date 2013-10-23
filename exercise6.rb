puts "I need many groceries today. I hope you'll help me. Here's a list."

grocery_list = ["carrots", "toilet paper", "apples", "salmon"]

grocery_list.each {|x| puts "* #{x}"}

puts "I forgot rice. I'm going to add that."

grocery_list << "rice"

puts "So what we need so far is: "
puts grocery_list.join(", ")

if grocery_list == grocery_list.include?("bananas")
	puts "Great, we got the bananas."
else
	puts "I still need to pick up bananas."
	puts "(Hint: Type 'bananas' or something similar to hand them over)"
end

answer = gets.chomp

unless answer.include?("bananas")
	puts "I still need to pick up bananas."
else
	puts "Great! We have bananas now."
end

puts "What was the third item on the list again?"

second_answer = gets.chomp

rightanswer = grocery_list.include?(grocery_list[2])
anotheranswer = grocery_list.include?(grocery_list[2].capitalize)

unless second_answer == rightanswer || anotheranswer
	puts "Oh, yeah! It was apples."
else
	puts "Ugh, you're no help."
end

puts "I talked to the store clerk and it turns out everything is sorted alphabetically! Can you speak to the clerk and ask for a better sorting of our list?"
puts "(Hint: Type 'talk')"

answer = gets.chomp

if answer == "talk"
	puts "Clerk: Sure, I can give you your items in alphabetical order:"
	puts grocery_list.sort
else	"Please talk to the clerk"
end

puts "Thanks for doing that. While you were talking to the clerk I discovered that there's no salmon here so let's take it off our list."
puts grocery_list.sort
puts "(Hint: Type 'remove salmon' to remove salmon from the grocery list)"

third_answer = gets.chomp

if third_answer == "remove salmon"
	grocery_list.delete_at(3)
	puts "Great! Our list is now: "
	puts grocery_list.sort
else
	puts "There's no salmon here! Take it off the list."
end