require 'rails_helper'
RSpec.describe Gif do
  it "exists" do
      data = {images: {original: {url: 'url string'}}}
      gif = Gif.new(data)

      expect(gif).to be_a(Gif)
      expect(gif.image).to be_a(String)
  end
end