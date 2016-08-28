require_relative("../lib/sinatra_todo_first_class.rb")


RSpec.describe Task do 




	describe "id" do
		
			task = Task.new("Buy the milk")
            task2 = Task.new("Wash the car")
        it "gives the id number of the task" do

			expect(task.id).to eq(1)
			expect(task2.id).to eq(2)
		end
	end
	describe "completed?" do
			task = Task.new("Buy the milk")
            task2 = Task.new("Wash the car")
		it "keeps track of whether a task is complete or not" do
			expect(task.completed?).to eq(false)
			expect(task2.completed?).to eq(false)
		end
	end
	describe "completed!" do
			task = Task.new("Buy the milk")
            task2 = Task.new("Wash the car")
		it "tells you when the task is completed" do
			expect(task.completed!).to eq(true)
			expect(task2.completed!).to eq(true)
		
		end
	end
	describe "make incomplete!" do
			task = Task.new("Buy the milk")
            task2 = Task.new("Wash the car")
		it "tells you when the task is incomplete" do
			expect(task.make_incomplete!).to eq(false)
			expect(task2.make_incomplete!).to eq(false)
		
		end
	end
	describe "time created" do
			task = Task.new("Buy the milk")
            task2 = Task.new("Wash the car")
		it "tells you when the task was created" do
			expect(task.created_at).to eq(Time.now.to_i)
			expect(task2.created_at).to eq(Time.now.to_i)
		
		end
	end
	describe "updated_content" do
			task = Task.new("Buy the milk")
            task2 = Task.new("Wash the car")
		it "updates the to the right content if the wrong one was entered" do
			expect(task.update_content!("Buy some orange juice")).to eq("Buy some orange juice")
			expect(task2.update_content!("Wash the dishes")).to eq("Wash the dishes")
		
		end
	end
end





