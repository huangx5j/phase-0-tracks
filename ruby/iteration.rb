def status
	puts "Before passing a block"
	2.times {yield}
end

status {puts "After passing a block"}