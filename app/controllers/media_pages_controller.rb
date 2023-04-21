class MediaPagesController < ApplicationController
  before_action :set_media_page, only: %i[ show update destroy ]

  # GET /media_pages
  def index
    @media_pages = MediaPage.all

    render json: @media_pages
  end

  # GET /media_pages/1
  def show
    render json: @media_page
  end

  # POST /media_pages
  def create
    @media_page = MediaPage.new(media_page_params)

    if @media_page.save
      render json: @media_page, status: :created, location: @media_page
    else
      render json: @media_page.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /media_pages/1
  def update
    if @media_page.update(media_page_params)
      render json: @media_page
    else
      render json: @media_page.errors, status: :unprocessable_entity
    end
  end

  # DELETE /media_pages/1
  def destroy
    @media_page.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_media_page
      @media_page = MediaPage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def media_page_params
      params.require(:media_page).permit(:title)
    end
end
