PRODUCTION_APP = stormy-eyrie-69867

run:
	bin/rails s

test:
	bundle exec rspec	
	
db.production:
	heroku pg:psql --app=$(PRODUCTION_APP)

processes.production:
	heroku ps --app=$(PRODUCTION_APP)
