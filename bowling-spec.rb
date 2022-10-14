require_relative "bowling"

RSpec.describe Score do
  describe "#bowling_score" do
    context "simple game" do
      it "returns 63" do
        pins = [1, 5, 4, 4, 8, 0, 5, 3, 0, 0, 4, 5, 2, 3, 8, 1, 7, 1, 1, 1]
        subject = described_class.new(pins)
        expect(subject.bowling_score).to eq(63)
      end
      context "game with rolls of 0 score" do
        it "returns 63" do
          pins = [1, 5, 4, 4, 8, "-", 5, 3, "-", "-", 4, 5, 2, 3, 8, 1, 7, 1, 1, 1]
          subject = described_class.new(pins)
          expect(subject.bowling_score).to eq(63)
        end
      end
    end
  end
end
