 require 'rubygems'
    require 'rake'
    require 'rdoc'
    require 'date'
    require 'yaml'
    require 'tmpdir'
    require 'jekyll'

    desc "Generate blog files"
    task :generate do
      Jekyll::Site.new(Jekyll.configuration({
        "source"      => ".",
        "destination" => "_site"
      })).process
    end


    desc "Generate and publish blog to gh-pages"
    task :deploy => [:generate] do
      Dir.mktmpdir do |tmp|
        system "cp -R _site/* #{tmp}"
        system "git checkout -B gh-pages"
        system "rm -rf *"
        system "cp -R #{tmp}/* ."
        message = "Site updated at #{Time.now.utc}"
        system "git add ."
        system "git commit -am #{message.shellescape}"
        system "git push production gh-pages --force"
        system "git checkout master"
        system "mkdir _site"
        system "cp -R #{tmp}/* ./_site"
        system "echo yolo"
      end
    end

task :default => :deploy
