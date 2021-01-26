using JuliaDB

function processInput()
	user_input = ""
	while user_input != "exit"
		print("Input text: \n")
		user_input = readline()
		print(user_input * "\n")
	end
end



processInput()