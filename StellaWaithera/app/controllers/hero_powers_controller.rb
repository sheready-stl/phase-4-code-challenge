class HeroPowersController < ApplicationController
  def create
    hero_powers = HeroPower.create(hero_powers_params)
    if hero_powers.valid?
        render json: hero_powers, status: :created
    else
        render json: {error: ["validation errors"]}
    end
  end

  private

  def hero_powers_params
      params.permit(:strength, :hero_id, :power_id)
  end
end
