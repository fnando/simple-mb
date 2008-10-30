SimpleMB
========

* [http://github.com/fnando/simple-mb](http://github.com/fnando/simple-mb)

DESCRIPTION:
------------

A simple MusicBrainz wrapper. **IT'S CURRENTLY A WORK IN PROGRESS!**


INSTALLATION:
-------------

SimpleMB can be installed as Rails plugin or gem. To install it as gem, just
run the command 

	sudo gem install fnando-simple-mb --source=http://gems.github.com

If you prefer it as a plugin, just run the command

	script/plugin install git://github.com/fnando/simple-mb.git

USAGE:
------
	
	require "rubygems"
	require "simple-mb"

	mb = SimpleMB::Base.new
	mb.find_artists('Hit The Lights').each do |artist|
	  puts "Artist name: #{artist.name}"
	  puts "Sort name: #{artist.sort_name}"
	  puts "Score: #{artist.score}"
	  puts "MBID: #{artist.mbid}"
	  puts

	  artist.releases(:official).each do |release|
	    puts "Release title: #{release.title}"
	    puts "Score: #{release.score}"
	    puts "MBID: #{release.mbid}"
	    puts "Type: #{release.type.join(', ')}"
	    puts

	    release.tracks.each_with_index do |track, i|
	      puts "##{i+1} #{track.title}"
	      puts "Duration: #{track.duration}"
	      puts
	    end
	  end
	end

TODO
----	

* Write the specs
* Add pagination support

MAINTAINER
----------
 
* Nando Vieira ([http://simplesideias.com.br](http://simplesideias.com.br))

LICENSE:
--------

(The MIT License)

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.