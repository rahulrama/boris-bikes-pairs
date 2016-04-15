class Bike
#testing_git_tracking
attr_reader :broken
	def initialize
		@broken = false
	end

	def working?
 		!@broken
 	end

	def report_broken
		@broken = true
	end

	def broken?
		@broken
	end

 end
