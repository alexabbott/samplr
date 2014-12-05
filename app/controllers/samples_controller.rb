class SamplesController < ApplicationController 
	def index 
		@samples = Sample.all
		@sample = Sample.new
	end 

	def create
		@sample = Sample.new(sample_params)
		@sample.save
		redirect_to samples_path
	end

	def sample_params
		params.require(:sample).permit(:name, :url, :category)
	end
end