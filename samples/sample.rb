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
  
  break
end
