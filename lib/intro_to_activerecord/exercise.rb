# Run the specs with `rspec` to track your progress
# Define a class Task that inherits from ActiveRecord
class Task < ActiveRecord::Base

end

# Define a method `learning_activerecord` that creates a new `Task` with a title of `"Learn about ActiveRecord"`
def learning_activerecord
  Task.create(title: "Learn about ActiveRecord")
end

# Define a method `i_think_i_get_it` that finds the task with a title of `"Learn about ActiveRecord"`, updates its complete attribute to `true` and returns it.
def i_think_i_get_it
  task = Task.find_by(title: "Learn about ActiveRecord")
  task.update(complete: true)
  task
end

# Define a method `moving_on` that finds the task with a title of `"Learn about ActiveRecord"` and removes its corresponding database record.
def moving_on 
  task = Task.find_by(title: "Learn about ActiveRecord")
  task.delete
end