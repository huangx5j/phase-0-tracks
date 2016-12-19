#Design and build a nested data structure to represent a real-world construct

#Coding school with list of teachers, locations, students, and levels
code_school = {name: "Devbootcamp",
	classroom: { 
	  	location: ["Chicago", "Houston", "San_Francisco"],
	  	teachers: {
	  		name1: "Denny", 
	  		name2: "Andrew", 
	  		name3: "Jenny", 
	},
	students: {
	  level: ["beginner", "intermediate", "advanced"]
	}
	}
}

#Change Houston location to Miami
code_school[:classroom][:location][1] = "Miami"
p code_school[:classroom][:location]

#Print out list of teachers
code_school[:classroom][:teachers].each {|teacher| puts "The teachers are #{teacher}"}

#Print out different student levels
code_school[:classroom][:students][:level].each {|levels| puts "One student level is #{levels}"}