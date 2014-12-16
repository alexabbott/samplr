require 'rails_helper'

describe "adding a new sample" do

  it "can add a sample" do
    # always use visit to land on a page
    # here we use the alias of home_page to start
    visit samples_path

    # we check that the current path landed on is indeed the home path
    # note...THIS IS SOME RAD SH#$!..we just mimicked a user
    # actually using our site!
    expect(current_path).to eq(samples_path)

    # check metronome functionality
    find(".start").click
    find(".stop").click


  end
end