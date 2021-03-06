require_relative("models/star")
require_relative("models/movie")
require_relative("models/casting")

require('pry-byebug')

Star.delete_all()
Movie.delete_all()
Casting.delete_all()

star1=Star.new({'first_name' => 'Johnny', 'last_name'=>'Depp'})
star1.save()

star2=Star.new({'first_name' => 'Edward', 'last_name'=>'Norton'})
star2.save()

star3=Star.new({'first_name' => 'Brad', 'last_name'=>'Pitt'})
star3.save()

movie1=Movie.new({'title'=>'Fight Club','genre'=>'Action'})
movie1.save()

movie2=Movie.new({'title'=>'Pirates of Caribbean','genre'=>'Action'})
movie2.save()

movie3=Movie.new({'title'=> 'Benny and Joon','genre'=>'comedy'})
movie3.save()

casting1=Casting.new({'movie_id'=> movie1.id,'star_id'=> star3.id, 'fee'=> '100000'})
casting1.save()

casting2=Casting.new({'movie_id'=> movie2.id,'star_id'=> star1.id, 'fee' =>'800000'})
casting2.save()

casting3=Casting.new({'movie_id'=> movie3.id, 'star_id' =>star1.id, 'fee'=>'900000'})
casting3.save()

binding.pry
nil
