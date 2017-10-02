class HomeController < ApplicationController
  def index
    @watch_image1 = Watch.first.product_images.first
    @watch_image2 = Watch.last.product_images.first
  end
end
