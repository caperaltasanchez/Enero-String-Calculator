require './calculator.rb'

describe Calculator do 

	it "si la cadena es vacia debe retornar 0" do
		c = Calculator.new()
		c.add("").should eq(0)
	end

	it "si la cadena es un numero debe retornar el mismo numero" do
		c = Calculator.new()
		c.add("1").should eq(1)
	end

	it "si la cadena son 2 numeros separados por una coma debe retornar la suma" do
		c = Calculator.new()
		c.add("1,2").should eq(3)
	end
end