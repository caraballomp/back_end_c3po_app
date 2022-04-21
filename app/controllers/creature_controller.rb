class CreatureController < ApplicationController
  get '/creature' do
    Creature.all.to_json
  end

  patch '/creature/:id' do
    creature = Creature.find_by_id(params[:id])
    creature.update(creature_params)
    creature.to_json
  end

  private

  def creature_params
    allowed_params = %w[creatue_type film image_url]
    params.filter { |param, value| allowed_params.include?(params) }
  end
end
