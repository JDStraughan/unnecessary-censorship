require 'spec_helper'

describe 'Unnecessary Censor' do

  it "should not alter string with 0 matches" do
    "lorem ipsum dolor set".unnecessarily_censor.should eql "lorem ipsum dolor set"
  end

  it "should alter a string with present participle(s)" do 
    "jogging is more fun than sprinting".unnecessarily_censor.should satisfy do |x|
      x = "****ing is more fun than sprinting" || 
          "jogging is more fun than ****ing"
    end
  end
  
  it "should alter a string with verb(s)" do 
    "go treat yourself and improve your life".unnecessarily_censor.should satisfy do |x|
      x = "go **** yourself and improve your life" || 
          "go treat yourself and **** your life"
    end
  end
  
  it "should alter a string with adjective(s)" do 
    "purple organic food is good".unnecessarily_censor.should satisfy do |x|
      x = "****** organic food is good" || 
          "purple organic food is ****" || 
          "purple ******* food is good"
    end
  end

end