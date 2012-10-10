desc "This task is called by the Heroku scheduler add-on"
task :send_reminders => :environment do
    User.send_reminders
end
#task :update_feed => :environment do
#    puts "Updating feed..."
#    NewsFeed.update
#    puts "done."
#end


