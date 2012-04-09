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

	it "si la cadena recibe mas de 2 separados por una coma debe retornar la suma" do
		c = Calculator.new()
		c.add("1,2,3,4").should eq(10)
	end
	

	it "si la cadena recibe numeros separados por coma o \n2 debe retornar la suma" do
		c = Calculator.new()
		c.add("1\n2,3").should eq(6)
	end

end