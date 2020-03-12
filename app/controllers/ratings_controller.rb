# frozen_string_literal: true

class RatingsController < OpenReadController
  before_action :set_rating, only: %i[update destroy]

  # GET /ratings
  def index
    @ratings = Rating.all

    render json: @ratings
  end

  # GET /ratings/1
  def show
    @rating = Rating.find(params[:id])
    render json: @rating
  end

  # POST /ratings
  def create
    @rating = current_user.ratings.build(rating_params)

    if @rating.save
      render json: @rating, status: :created, location: @rating
    else
      render json: @rating.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ratings/1
  def update
    if @rating.update(rating_params)
      render json: @rating
    else
      render json: @rating.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ratings/1
  def destroy
    @rating.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_rating
    @rating = current_user.ratings.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def rating_params
    params.require(:rating).permit(:user_id, :family_id, :happiness,
                                   :honesty, :reliability, :consistency,
                                   :respect, :benefits, :kids,
                                   :safetyAndComfort, :pay, :workAgain,
                                   :reputation, :url)
  end
end
