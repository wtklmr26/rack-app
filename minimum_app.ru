# procはcallを実行可能

require './upcase_all'
require './downcase_all'

# updase -> downcaseの順に実行される
use DowncaseAll
use UpcaseAll

App = lambda do |env|
  [200, { "Content-Type" => "text/html"}, ["Hello world!"]]
end

run App
