class Gif
  attr_reader :image
  def initialize(data)
    @image = data[:images][:original][:url]
  end
end
