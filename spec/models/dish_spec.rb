require 'rails_helper'

RSpec.describe Dish, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:fans) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    end
end
