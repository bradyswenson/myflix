require 'spec_helper'

describe Video do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
  it { should belong_to(:category) }

  it "saves" do
    video = Video.new(title: "Seinfeld", description: "A show about nothing.")
    video.save
    expect(Video.first).to eq(video)
  end
end