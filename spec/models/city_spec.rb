require 'rails_helper'

RSpec.describe City, type: :model do
  it "should has a valid factory" do
    expect(FactoryGirl.create(:city)).to be_valid
  end

  context "validations" do
    it {is_expected.to validate_presence_of(:name) }
    it {is_expected.to validate_presence_of(:state) }
  end
end
