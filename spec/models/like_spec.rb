require 'rails_helper'

RSpec.describe Like, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:user) }

    it { should belong_to(:dish) }

    end

    describe "InDirect Associations" do

    it { should have_one(:restaurant) }

    end

    describe "Validations" do

    end
end
