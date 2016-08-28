class TodoList
    attr_reader :tasks
    def initialize
        @tasks = []
    end
end


def add_task(new_task)
	@tasks.push(new_task)	
	
end