require 'rails_helper'

describe SecretSantaGenerator do
  it "takes in a list" do
    people = ['Ellie', 'Nick', 'Jake', 'Tommy', 'Charlie', 'Merri', 'Joe']

    generator = SecretSantaGenerator.new(people)

    result = [
      {'Ellie' => 'Nick'},
      {'Nick' => 'Jake'},
      {'Jake' => 'Tommy'},
      {'Tommy' => 'Charlie'},
      {'Charlie' => 'Merri'},
      {'Merri' => 'Joe'},
      {'Joe' => 'Ellie'}
    ]

    expect(generator.create_list).to eq result
  end
end
