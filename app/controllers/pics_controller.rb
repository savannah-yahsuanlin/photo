class PicsController < ApplicationController

	def index
		@pics = Pic.all()
	end

	def new
		@pic = Pic.new()
	end

	def create
		@pic = Pic.new(pic_params)
	end

	def show
	end

	private
	def pic_params
		params.require(:pic).permit(:title, :description)
	end
end
