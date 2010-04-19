# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

films = Film.create([{:imdb_permalink=>"http://www.imdb.com/title/tt0096754/", :suggested_by=>"Charles"}, 
         {:imdb_permalink=>"http://www.imdb.com/title/tt0084827/", :suggested_by=>"Charles"},
         {:imdb_permalink=>"http://www.imdb.com/title/tt0071544/", :suggested_by=>"Rachel Sandwell"},
         {:imdb_permalink=>"http://www.imdb.com/title/tt0087332/", :suggested_by=>"Jacob Romero"}])
films.each {|f| f.populate_with_imdb }


members = Member.create([{:firstname=>"Charles", :lastname=>"Mitchell", :email=>"chuckmitchell@gmail.com"}])

viewings = Viewing.create([{:scheduled_at=>"2009-11-10 19:00:00", :films=>[films[0]]},
            {:scheduled_at=>"2009-11-18 19:00:00", :films=>[films[1]]},
            {:scheduled_at=>"2009-11-22 19:00:00", :films=>[films[2]]},
            {:scheduled_at=>"2009-12-16 19:00:00", :films=>[films[3]]}])
