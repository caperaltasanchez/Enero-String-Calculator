class Calculator
	
	def add (cadena)
		if cadena == "" or cadena == nil
			return 0
		end

		array = cadena.split(",").map {|num| num.to_i}

		array.inject(0) {|suma, num| suma += num}
	end
end