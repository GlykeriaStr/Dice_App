require "dice"

describe Dice do
  it { is_expected.to respond_to(:roll).with(1).argument }

  it "should return between 1-6" do
    roll = subject.roll(100)
    actual = roll.minmax
    expected = [1,6]
    expect(actual).to eq expected
  end

  it "gives the right number of results" do
    expect(subject.roll(7).size).to eq 7
  end

  it { is_expected.to respond_to(:previous)}
  it "should return previous dice rolls" do
    rolls = subject.roll
    expect(subject.previous).to eq rolls
  end

  it {is_expected.to respond_to :score}
  it "should give us the current score" do
    rolls = subject.roll
    expect(subject.score).to eq rolls.sum
  end
end
