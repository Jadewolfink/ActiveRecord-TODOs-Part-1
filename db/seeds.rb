require 'faker'


  10.times do
    Task.create(task: Faker::Lorem.sentence ,completed_flag: rand(2))
  end
