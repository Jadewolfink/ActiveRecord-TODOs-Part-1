require_relative '../../config/application.rb'

class Task < ActiveRecord::Base

  def add_task(temp)
     self[:task] = temp.slice(1..temp.length).join(" ")
     self[:completed_flag] = 0
     self.save
  end

  def delete_task(temp)
    y = Task.find_by(id: temp[1])
    y.destroy
  end

  def list_all
    Task.all.each do |x|
      p "#{x[:id]}.  [#{x[:completed_flag]}] #{x[:task]}"
    end
  end

  def complete_task(temp)
      x = Task.find_by(id: temp[1])
      x[:completed_flag] = 1
      x.save
  end

end
