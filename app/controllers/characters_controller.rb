class CharactersController < ApplicationController
  
  def index
    timestamp = Time.now.to_s
    hash = generate_hash(timestamp)
     puts "Timestamp: #{timestamp}"
    response = HTTParty.get("#{MARVEL_API_BASE_URL}/characters", query: {
      ts: timestamp,
      apikey: MARVEL_PUBLIC_KEY,
      hash: hash
    })
  
    if response.success?
      render json: response.parsed_response
    else
      render json: response.parsed_response, status: response.code
    end
  end

  def show
    timestamp = Time.now.to_s
    hash = generate_hash(timestamp)
    character_id = params[:id]
    response = HTTParty.get("#{MARVEL_API_BASE_URL}/characters/#{character_id}", query: {
      ts: timestamp,
      apikey: MARVEL_PUBLIC_KEY,
      hash: hash
    })

    if response.success?
      render json: response.parsed_response
    else
      render json: response.parsed_response, status: response.code
    end
  end

  private

  def generate_hash(timestamp)
    Digest::MD5.hexdigest("#{timestamp}#{MARVEL_PRIVATE_KEY}#{MARVEL_PUBLIC_KEY}")
  end
end
