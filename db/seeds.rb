# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

films = Film.create([{:title=>"The Abyss", :director=>"James Cameron", :synopsis=>"A civilian diving team are enlisted to search for a...", :released_on=>"1982-08-09", :imdb_permalink=>"http://www.imdb.com/title/tt0096754/", :suggested_by=>"Charles"}, 
         {:title=>"Tron", :director=>"Steven Lisberger", :synopsis=>"A hacker is literally abducted into the world of a ...", :released_on=>"1982-07-09", :imdb_permalink=>"http://www.imdb.com/title/tt0084827/", :suggested_by=>"Charles"},
         {:title=>"Idi Amin", :director=>"", :synopsis=>"Idi Amin Dada Oumee was born in the rural village o...", :released_on=>"1984-06-08", :imdb_permalink=>"http://www.imdb.com/name/nm0024907/", :suggested_by=>"Rachel Sandwell"},
         {:title=>"Ghostbusters", :director=>"Ivan Reitman", :synopsis=>"Three unemployed parapsychology professors set up s...", :released_on=>"1984-06-08", :imdb_permalink=>"http://www.imdb.com/title/tt0087332/", :suggested_by=>"Jacob Romero"}])

members = Member.create([{:name=>"Charles Mitchell", :password=>"1lastchance", :email=>"chuckmitchell@gmail.com"}])

viewings = Viewing.create([{:scheduled_at=>"2009-11-10 19:00:00", :film=>films[0], :members=>[members.first]},
            {:scheduled_at=>"2009-11-18 19:00:00", :film=>films[1], :members=>[members.first]},
            {:scheduled_at=>"2009-11-22 19:00:00", :film=>films[2], :members=>[members.first]},
            {:scheduled_at=>"2009-12-16 19:00:00", :film=>films[3], :members=>[members.first]}])
