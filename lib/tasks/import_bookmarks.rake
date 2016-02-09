namespace :import_data do

  desc "Import Data"
  task :bookmarks => :environment do

    lines = IO.readlines '/Users/swm/Dropbox/links.txt'

    lines.each do |line|
      (title, url, date) = line.split(' - ')
      Bookmark.create(title: title, url: url, created_at: date) 
    end
  end
end

