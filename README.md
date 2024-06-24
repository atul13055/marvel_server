# Marvel Microservice

## Setup

### Server

1. Clone the repository
2. Install dependencies: `bundle install`
3. Set environment variables: `MARVEL_PUBLIC_KEY`, `MARVEL_PRIVATE_KEY`
4. Start the server: `rails s`
 Create GET request on POSTMAN
curl -X GET "http://localhost:3000/characters"
curl -X GET "http://localhost:3000/characters/1009351"

### Client

1. Install the gem: `gem install marvel_client`
2. Use the client:

```ruby
require 'marvel_client'

client = MarvelClient.new
puts client.characters
puts client.character(1009351)



### Conclusion

This implementation covers setting up the server, client library, tests, and documentation. The provided code should be sufficient for your colleague to continue development while you're away.
