require "spec_helper"

describe Notifier do
  describe "order_received" do
    let(:mail) { Notifier.order_received(build(:order)) }
    it "renders the headers" do
      mail.subject.should eq("SimpleStore Order Confirmation")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("You ordered the following items:")
    end
  end

  describe "order_shipped" do
    let(:mail) { Notifier.order_shipped(build(:order)) }

    it "renders the headers" do
      mail.subject.should eq("Order shipped")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("You ordered of the following items has shipped:")
    end
  end

end
