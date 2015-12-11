class SearchesController < ApplicationController
  before_action :set_search, only: [:show, :edit, :update, :destroy]

  def index
  	@searches = params[:q] ? Search.search_for(params[:q]) : Search.all
  end

  def new
  end

  def result
  	state = URI.encode(params[:state] || "AK")
  	county = URI.encode(params[:county] || "ALEUTIANS EAST").upcase
  	coverage = URI.encode(params[:metal_level] || "Bronze")
  	url = URI("https://data.healthcare.gov/resource/qbh2-42zk.json?state=#{state}&county=#{county}&metal_level=#{coverage}")
  	@results = JSON.parse(Net::HTTP.get(url)).first(10)
  end

  def show
  	@result = Result.find(params[:q])
  end

  def create
  	@search = Search.new(params.require(:search).permit(:state, :county, :coverage))
  	if @search.save
  		redirect_to @search, notice: "New search added."
  	else
  		render :new
  	end
  end

  def update
  	respond_to do |format|
  	 if @search.update(search_params)
  	 	redirect_to @search, notice: "New search added."
  	 else
  	 	render :new
  	 end
    end
  end

  def destroy
  	@search.destroy
  	respond_to do |format|
  		redirect_to @search, notice: "Search was successfully destroyed."
  	end
  end

  private
  	def set_search
  	  @search = Search.find(params[:id])
   	end

   	def search_params
   	  params.require(:search).permit(:state, :county, :coverage)
   	end

end