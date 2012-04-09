describe Calculator do 

	it "si la cadena es vacia debe retornar 0" do
		c = Calculator.new()
		c.add("")
		c.resultado.should eq(0)
	end

end