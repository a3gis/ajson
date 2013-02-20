task "lib/ajson/parser.rb" => "lib/ajson/parser.y" do
   sh "racc -o lib/ajson/parser.rb lib/ajson/parser.y"
end

task :test do
   sh "cat test.json | ./ajson"
end

task :default => "lib/ajson/parser.rb"
