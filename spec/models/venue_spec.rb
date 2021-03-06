require "rails_helper"

RSpec.describe Venue, type: :model do
  describe "Direct Associations" do
    it { should have_many(:menu_items) }
  end

  describe "InDirect Associations" do
    it { should have_many(:fans) }
  end

  describe "Validations" do
  end
end
