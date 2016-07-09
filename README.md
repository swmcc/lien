# lien

**lien**  */liːn,ˈliːən/*

## Description

Lives in the ☁️ and 💾 my 📙's  

### Premise

I find bookmarks a handy tool. However finding a tool that meets my requirements
has proven to be very difficult. 

#### Requirements

- Saves the link with a title.
- Tagging enabled
- Searching
- No adverts
- Can be used from several devices
- Can be used from the command line

I used to use [del.icio.us](delicious.com) but that got sold to
[yahoo](Yahoo) - enough said. [Google Bookmarks](https://www.google.co.uk/bookmarks/)
doesn't suit me as I can be on different accounts (work, personal). So instead
of subscribing to a third party and have them either mess the app or 'sunset' it
I decided to write my own.

## Links

- [Production](http://lien.swm.cc)
- [Development](http://localhost:3000)

## Development Info

```
git clone git@github.com:swmcc/lien.git 
cd lien
bundle install
make run
```

## Testing

I have included the ```guard-rspec``` gem to aid a fast feedback loop. 

```
make test
```

## Deploying

Lives on [heroku](http://www.heroku.com). Deployed via 
[CodeShip](http://www.codeship.com).

```
git push origin master
```
