namespace :export do

  desc "Prints out the links.txt file in a seeds.rb way"
  task :seeds_format => :environment do

    lines = IO.readlines '/Users/swm/Dropbox/links.txt'

    lines.each do |line|
      (title, url, date) = line.split(' - ')
      puts "Bookmark.create(title: '#{title}', url: '#{url}', created_at: '#{date}')" 
    end
  end
end

