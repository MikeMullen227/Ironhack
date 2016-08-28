require_relative("../lib/sinatra_todo_list.rb")
require_relative("../lib/sinatra_todo_first_class.rb")



RSpec.describe TodoList do
  let(:task1) { Task.new("Activate SunPass") }
  let(:task2) { Task.new("Vacuum 2nd floor") }
  let(:task3) { Task.new("Go to the gym") }
  let(:empty_list) { TodoList.new }
  let(:list) do
    list = TodoList.new

    list.add_task(task1)
    list.add_task(task2)
    list.add_task(task3)

    # Don't forget to return the value!
    list
  end





	describe "id" do
		
			task = Task.new("Buy the milk")
            
        it "takes a task and puts it into a list" do

			expect(task.add_task).to eq()
			
		end
	end