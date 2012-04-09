class Calculator
	
	def add (cadena)
		if cadena == "" or cadena == nil
			return 0
		end

		array = cadena.gsub("\n",",").split(",").map {|num| num.to_i}

		if cadena.slice(0,2) == "//"
			delimitador = cadena.slice!(%r{^//(.+)\n}).strip.gsub("//", "")
			array = cadena.gsub("\n","").gsub("//", "").split(delimitador).map {|num| num.to_i}
		end

		negatives = array.select {|num| num < 0}
    	raise "negatives not allowed: #{negatives.inspect}" unless negatives.empty?

		array.inject(0) {|suma, num| suma += num}
	end
end