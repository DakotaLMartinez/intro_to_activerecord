RSpec.describe "ActiveRecord Exercise" do
  describe "Task" do #
    it "inherits from ActiveRecord::Base" do
      expect(Task).not_to be nil
      expect(Task.superclass).to eq(ActiveRecord::Base)
    end
  end

  describe "tasks table" do 
    it "exists" do 
      expect{Task.all}.not_to raise_error
    end
  end

  describe "#learning_activerecord" do 
    it "creates a new Task with a title of 'Learn about ActiveRecord' and returns it" do 
      task = learning_activerecord
      expect(task).not_to be nil
      expect(task.id).not_to be nil
      expect(task.title).to eq('Learn about ActiveRecord')
    end

    it "the task has the default value for complete of 'false'" do 
      learning_activerecord
      expect(Task.last.complete).to eq(false)
    end
  end

  describe "#i_think_i_get_it" do 
    it "finds the task with a title of 'Learn about ActiveRecord', updates its complete attribute to true, and returns it" do 
      task = i_think_i_get_it
      expect(task).to be_a(Task)
      expect(task.title).to eq('Learn about ActiveRecord')
      expect(task.complete?).to be true
    end
  end

  describe "#moving_on" do 
    it "finds the task with a title of 'Learn about ActiveRecord' deletes it from the database and returns it" do 
      task = moving_on
      expect(task).to be_a(Task)
      expect(Task.find_by_id(task.id)).to be_nil
    end
  end
  
end
