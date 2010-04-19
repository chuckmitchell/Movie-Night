class Film < ActiveRecord::Base
  has_and_belongs_to_many :viewings
  has_many :requests
  has_attached_file :poster, :styles=>{:thumb=>"94x104>"}
  validates_uniqueness_of :imdb_permalink
  
  def self.createFromIMDB(url)
    film = Film.new(:imdb_permalink=>url)
    film.populate_with_imdb
    film.save
    film
  end
  
  def populate_with_imdb
    scraper = IMDBScraper.new(imdb_permalink)
    update_attributes(:title => scraper.title,
                      :director=>scraper.director,
                      :synopsis=>scraper.synopsis,
                      :released_on=>scraper.release_date
                     )
    save_image_from_imdb
    save
  end
  
  
  
  def save_image_from_imdb
    scraper =  IMDBScraper.new(imdb_permalink)
    image_url = scraper.poster_uri
    
    
    file_path = "./tmp/scraped_poster_"+rand(1000).to_s+".jpg"
    image_file = File.open(file_path, 'w') do |output|
      # Download image
      open(image_url) do |input|
        output << input.read
      end 
    end
    
    update_attributes(:poster=>File.open(file_path, 'r'))
    save  
  end
  
  
end
