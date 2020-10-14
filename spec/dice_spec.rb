require_relative '../lib/dice'

RSpec.describe Dice do
  it { is_expected.to respond_to(:throw) }

describe "#throw" do
 it "rolls a dice and gets a random number in 1..6" do
   allow(subject).to receive(:rand).and_return(4)
   expect {subject.throw}.to output(["Throws:", "4", "Your total is: 4\n"].join("\n")).to_stdout
 end
 it "rolls set number of dice, if not specified, rolls single dice" do
   allow(subject).to receive(:rand).and_return(3)
   expect {subject.throw}.to output(["Throws:", "3", "Your total is: 3\n"].join("\n")).to_stdout
 end

 it "displays results of each throw and a total" do
   allow(subject).to receive(:rand).and_return(3)
   expect {subject.throw(4)}.to output(["Throws:", "3", "3", "3", "3", "Your total is: 12\n"].join("\n")).to_stdout
 end
end
end
