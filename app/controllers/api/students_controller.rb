class Api::StudentsController < ApiController
	
	def index
		render json: Student.all.to_json
	end 

end