class Calculator
	attr_reader :resultado
	def add (cadena)
		if cadena == ""
			@resultado = 0
		end
	end
end