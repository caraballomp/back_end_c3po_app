class SpeciesController < ApplicationController
  get '/species' do
    # Species.where(id: @id).to_json

    Species.all.to_json
  end

  post '/species' do
    @species =
      Species.create(
        species_name: params[:species_name],
        description: params[:description],
      ).to_json
    @species.save
  end

  delete '/species/:id' do
    # return { message: 'Invalid session' }.to_json

    # @species = Species.find_by(id: params[:id])
    # @species.delete
    # return { message: 'Species Deleted' }.to_json
    Species.find_by_id(params[:id]).destroy
  end

  # delete '/pet/:id' do
  #   Pet.find_by_id(params[:id]).destroy

  # end
end
