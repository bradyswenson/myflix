require "spec_helper"

describe Category do
  it { should have_many(:videos) }

  it "saves" do
    category = Category.new(name: "Comedy")
    category.save
    expect(Category.first).to eq(category)
  end
end