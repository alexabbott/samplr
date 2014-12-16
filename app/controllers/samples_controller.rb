class SamplesController < ApplicationController 
	def index 
		@samples = Sample.all
		@kicks = Sample.where(category: 'kick')
		@snares = Sample.where(category: 'snare')
		@hihatsclosed = Sample.where(category: 'hh closed')
		@hihatsopen = Sample.where(category: 'hh open')
		@claps = Sample.where(category: 'clap')
		@cymbals = Sample.where(category: 'cymbal')
		@fx = Sample.where(category: 'fx')
		@vocals = Sample.where(category: 'vocal')
		@sample = Sample.new
	end 

	def create
		@sample = Sample.new(sample_params)
		@sample.save
		redirect_to root_path
	end

	def sample_params
		params.require(:sample).permit(:name, :url, :category, :audiofile)
	end
end