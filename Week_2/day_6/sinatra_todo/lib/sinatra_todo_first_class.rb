

class Task
    attr_reader :content, :id
    @@current_id = 1
    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @completed = false 
        @created_at = Time.now.to_i
        @updated_at = nil
        
    end


	def id
		@id 
	end

	def completed?
		@completed
	end

	def completed!
		@completed = true

	end

	def make_incomplete!
		@completed = false
	end

	def created_at
		@created_at
	end

	def update_content!(new_content)
		@content = new_content
		# @updated_at = Time.now.to_i
		
	end
end



 # task = Task.new("Buy the milk")
 #    puts task.id
 #    # 1
 #    task2 = Task.new("Wash the car")
 #    puts task2.id
 #    # 2
