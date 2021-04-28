require 'chunky_png'

class BulkImages
  def self.run
   (1..2000).each do |i|
     png = ChunkyPNG::Image.new(800, 600, ChunkyPNG::Color.rgb(rand(255), rand(255), rand(255)))
     png.save("test/filename#{i}.png", :interlace => true)
   end
 end
end

BulkImages.run
