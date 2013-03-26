require 'spec_helper'

describe EmailWorker do

  before(:each) do
    @user = FactoryGirl.create :user
  end

  let(:worker){ EmailWorker.new }

  describe "#perform" do
    it "delivers an email" do
      expect{
        worker.perform(@user.id)
      }.to change{ ActionMailer::Base.deliveries.size }.by(1)
    end
  end
end
