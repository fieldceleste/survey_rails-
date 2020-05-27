require 'rails_helper'

describe Survey do 
  it{ should have_many(:questions)}
end

describe Survey do
  it("titleizes the name of a survey") do
    survey = Survey.create({name: "about restaurants"})
    expect(survey.name()).to(eq("About Restaurants"))
  end
end
