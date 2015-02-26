require_relative '../models/task'
require_relative '../../config/application.rb'

x = Task.new
temp = ARGV

if ARGV[0].downcase=="add" || ARGV[0].downcase=="delete" || ARGV[0].downcase=="list" || ARGV[0].downcase=="complete"
  case ARGV[0].downcase
  when "add"
       x.add_task(temp)
       puts "We added \"#{ARGV.slice(1..ARGV.length).join(" ")}\" to your TODO list."

  when "delete"
        x.delete_task(temp)
        puts "We deleted  task No.#{ARGV[1]} from your TODO list."

  when "list"
        x.list_all

  when "complete"
        x.complete_task(temp)
      puts "GOOD JOB!"
  end

else
  p "Wrong command, please use ADD, DELETE, SAVE, COMPLETE or LIST"
  exit
end