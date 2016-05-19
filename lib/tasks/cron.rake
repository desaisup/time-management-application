namespace :pickup do
	task :cron do
		puts "helllllo"
	end 
     
     task :ask => :cron do
     puts "brother"
 
    end
end