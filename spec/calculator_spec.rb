require './main.rb'

describe Code do
  describe "#cipher" do
    it "Encodes base example" do
      code = Code.new("What a string!")
      expect(code.cipher(5)).to eql("Bmfy f xywnsl!")
    end

    it "Doesn't encode when given a 0 shift" do
      code = Code.new("What a string!")
      expect(code.cipher(0)).to eql("What a string!")
    end

    it "Works when given a shift higher than 26" do
      code = Code.new("What a string!")
      expect(code.cipher(26+5)).to eql("Bmfy f xywnsl!")
    end
  end

  describe "#decipher" do
    it "Decodes base example" do
      code = Code.new("Bmfy f xywnsl!")
      expect(code.decipher(5)).to eql("What a string!")
    end

    it "Doesn't decode when given a 0 shift" do
      code = Code.new("What a string!")
      expect(code.decipher(0)).to eql("What a string!")
    end

    it "Works when given a shift higher than 26" do
      code = Code.new("Bmfy f xywnsl!")
      expect(code.decipher(26+5)).to eql("What a string!")
    end
  end
end