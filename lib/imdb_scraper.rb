class IMDBScraper
  #uncomment the next line if you installed hpricot from the gem
  #require 'rubygems'
  require 'hpricot'
  require 'open-uri'

  def initialize(url)
    @url = url;
    @hp = Hpricot(open(@url))
  end

  def url
    @url
  end
  
  def  title
    @title = @hp.at("meta[@name='title']")['content']
  end
  
  def rating
      rating_text = (@hp/"div.rating/b").inner_text
      if rating_text =~ /([\d\.]+)\/10/
        @rating = $1
      end
      @rating
  end
  
  def director
     @directors = ""
     @hp.search("//div[@id='director-info']/div[1]/a").each do |a|
       @directors << a.inner_text.strip+", "
     end
     @directors.chomp(", ")
  end
  
  def synopsis
     begin
     @hp1 = Hpricot(open(@url+"plotsummary"))
     @synopsis = @hp1.search("//p[@class='plotpar']").inner_text.strip.split("\n\n")[0]
     rescue
       return ""
     end
  end
  
  def release_date
    @hp.search("//div[@class='info-content']")[4].inner_text.strip.split("\n")[0]
  end
  
  def poster_uri
      url = @hp.at("//div[@class='photo']/a[1]/img[1]")['src']
  end

  def extrainfo
    if @extrainfo == nil #don't do it twice
      @extrainfo = {} #init our hash
      (@hp/"div.info").each do |inf| #go through each info div
        title = inf/"h5" #the type of infobox is stored in h5
        if title.any? #if we found one , we got data
          body = inf.inner_text
          body = body.gsub(/\n/,'') #remove newlines
          if body =~ /\:(.+)/ #extract body from our text
            body = $1
          end
          @extrainfo[title.inner_text.gsub(/[:\s]/,'').downcase] = body #store the body
        end
      end
    end
    @extrainfo
  end

  def reset
    @rating = nil
    @extrainfo = nil
  end
end