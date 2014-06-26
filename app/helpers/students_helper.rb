module StudentsHelper
	
	def short text
		truncate text, length: 15
	end
	#def short text
	#	text = text[0..12]
	#	text += '...' if text.length > 12
	#	text
	#end
	#def short_bio student
	#	student.bio[0..12] + '...'
	#end


end
