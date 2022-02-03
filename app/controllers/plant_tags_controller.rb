class PlantTagsController < ApplicationController
  def new
    @plant_tag = PlantTag.new
    @plant = Plant.find(params[:plant_id])
  end

  def create
    params[:plant_tag][:tag_id].each do |tag_id|
      unless tag_id == ""
        @plant_tag = PlantTag.new(tag_id: tag_id)
        @plant = Plant.find(params[:plant_id])
        @plant_tag.plant = @plant
        @plant_tag.save!
      end
    end
    redirect_to garden_path(@plant.garden)
  end

  private

  def plant_tag_params
    params.require(:plant_tag).permit(tag_id: [])
  end
end
