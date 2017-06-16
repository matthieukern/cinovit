# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

JsonToForm::Application.load_tasks

namespace :db do
  desc 'Populate the development database'
  task populate: :environment do
    raise "Noooooooooooooooooooo!!" if (Rails.env.downcase == 'production')

    answers = Answer.includes(field: :fieldset).where(fieldsets: { id: 4 }).all
    types = [{ name: 'cd', size: 4 }, { name: 's', size: 4 }, { name: 'c', size: 3 }, { name: 'e', size: 5 }]
    replies = []

    (1..10000).each do |ct|
      reply = Reply.new
      type = types.sample
      ans = answers.find{ |a| a.field.question_id == '0' and a.answer_id == "#{types.find_index(type)}"}
      ans.number = ans.number.to_i + 1
      reply.answers << ans
      (1..type[:size]).each do |i|
        ans = answers.find_all{ |a| a.field.question_id == "#{type[:name]}_#{i}" }.sample
        ans.number = ans.number.to_i + 1
        reply.answers << ans
      end
      STDOUT.puts ct if (ct % 10) == 0
      replies << reply
    end

    Answer.transaction do
      answers.each { |a| a.save! }
    end

    Reply.transaction do
      replies.each { |r| r.save! }
    end
  end
end
