class StoryPagesController < ApplicationController
  before_action :set_story_page, only: %i[ show update destroy ]

  # GET /story_pages
  def index
    @story_pages = StoryPage.all

    render json: @story_pages
  end

  # GET /story_pages/1
  def show
    render json: @story_page
  end

  # POST /story_pages
  def create
    @story_page = StoryPage.new(story_page_params)

    if @story_page.save
      render json: @story_page, status: :created, location: @story_page
    else
      render json: @story_page.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /story_pages/1
  def update
    if @story_page.update(story_page_params)
      render json: @story_page
    else
      render json: @story_page.errors, status: :unprocessable_entity
    end
  end

  # DELETE /story_pages/1
  def destroy
    @story_page.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_story_page
      @story_page = StoryPage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def story_page_params
      params.require(:story_page).permit(:title, :body)
    end
end
