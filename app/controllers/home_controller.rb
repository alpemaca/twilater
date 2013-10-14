class HomeController < ApplicationController
  def index
    @users = User.all
  end

  def main
    @content = Content.new
    @contents = Content.where(user: current_user)

    # TO-DO: Why this not working?
    # access_token = prepare_access_token(ENV['OMNIAUTH_PROVIDER_TOKEN'], ENV['OMNIAUTH_PROVIDER_TOKEN_SECRET'])
    access_token = prepare_access_token('523342352-Vma5JhF4nAvPbWDAa11d1IyOr0JoW3BM7ZI5CO3q', 'f70dm8QAySlK7kBqXhmTCWGO8QSp9UEuwv2HTB6LI74ms')
    response = access_token.request(:get, "https://api.twitter.com/1.1/favorites/list.json")
    
    # TO-DO: Catch response error.
    
    response = JSON.parse(response.body)
    @tweets = []
    @webs = []
   # response.each do |tweet|
   #   puts tweet
   #   content = tweet['text']
   #   date = DateTime.parse(tweet['created_at']).strftime('%d/%m/%Y')
   #   name = tweet['user']['name']
   #   screen_name = tweet['user']['screen_name']
   #   t = Tweet.new(content, date, name, screen_name)
   #   @tweets.push(t)

   #   tweet['entities']['urls'].each do |url|
   #     w = Web.new(url['url'], t)
   #     puts url['url']
   #     @webs.push(w)
   #   end
   # end
  end

  def prepare_access_token(oauth_token, oauth_token_secret)
    consumer = OAuth::Consumer.new(ENV['OMNIAUTH_PROVIDER_KEY'], ENV['OMNIAUTH_PROVIDER_SECRET'],
      { :site => "http://api.twitter.com" })

    token_hash = { :oauth_token => oauth_token,
                   :oauth_token_secret => oauth_token_secret
                 }
    access_token = OAuth::AccessToken.from_hash(consumer, token_hash )
    return access_token
  end
end
