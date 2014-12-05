FactoryGirl.define do

  #we define a factory name, and then we specify the class
  factory :sample, class: Sample do

    #these setup the attributes, each declaration is a method call
    name "koan snare"
    url "http://alex-abbott.com/audio/koan1.wav"
    category "snare"

  end
end