describe "Emojii" do
	it "converts a string" do
		emojii = Emojii.new
		string = "I am a string"
		expect(emojii.convert(string).split(' ').length).to eq 5
		expect(emojii.convert(string).split(' ')[-1]).to eq "🍺"
	end
end
