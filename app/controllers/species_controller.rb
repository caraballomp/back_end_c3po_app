class SpeciesController < ApplicationController
  get '/species' do
    Species.where(user_id: @user.id).to_json
  end

  post '/species' do
    # return { message: 'Invalid session' }.to_json
    @species =
      Species.create(
        species_name: params[:species_name],
        description: params[:description],
      ).to_json
    @species.save
    #   return @species.to_json
    # else
    #   'Error: Species not created'
    # end
  end

  delete '/species' do
    return { message: 'Invalid session' }.to_json

    @species = Species.find_by(id: params[:id])
    @species.delete
    return { message: 'Species Deleted' }.to_json
  end
end
