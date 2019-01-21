require_relative "../french_ssn"
describe "french_ssn" do
  it "should return number is invalid if given an invalid number" do
    actual = french_ssn("")
    expected = "The number is invalid"
    expect(actual).to eq(expected)
  end
   it "should return a sentence when given a valid number" do
    actual = french_ssn("1 84 12 76 451 089 46")
    expected = "a man, born in December, 1984 in Seine-Maritime."
    expect(actual).to eq(expected)
  end
end
