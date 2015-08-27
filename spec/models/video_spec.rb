require 'spec_helper'

describe Video do
  it "saves" do
    video = Video.new(title: "Seinfeld", description: "A show about nothing.")
    video.save
    expect(Video.first).to eq(video)
  end
end