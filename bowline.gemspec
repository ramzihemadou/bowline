# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{bowline}
  s.version = "0.9.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Alex MacCaw"]
  s.date = %q{2010-09-24}
  s.default_executable = %q{bowline-gen}
  s.description = %q{Ruby/JS GUI framework}
  s.email = %q{alex@leadthinking.com}
  s.executables = ["bowline-gen"]
  s.extra_rdoc_files = [
    "README.txt",
     "TODO"
  ]
  s.files = [
    ".gitignore",
     "History.txt",
     "MIT-LICENSE",
     "README.txt",
     "Rakefile",
     "TODO",
     "VERSION",
     "assets/application.js",
     "assets/bowline.chain.js",
     "assets/bowline.js",
     "assets/jquery.chain.js",
     "assets/jquery.js",
     "assets/osx/Info.plist.erb",
     "assets/osx/bowline.png",
     "assets/osx/makeicns",
     "assets/superclass.js",
     "bin/bowline-gen",
     "bowline.gemspec",
     "examples/example.js",
     "examples/tweet.rb",
     "examples/tweets_binder.rb",
     "examples/twitter.html",
     "examples/users.rb",
     "lib/bowline.rb",
     "lib/bowline/app_config.rb",
     "lib/bowline/binders.rb",
     "lib/bowline/binders/collection.rb",
     "lib/bowline/binders/observer.rb",
     "lib/bowline/binders/singleton.rb",
     "lib/bowline/commands/build.rb",
     "lib/bowline/commands/console.rb",
     "lib/bowline/commands/generate.rb",
     "lib/bowline/commands/init.rb",
     "lib/bowline/commands/run.rb",
     "lib/bowline/desktop.rb",
     "lib/bowline/desktop/app.rb",
     "lib/bowline/desktop/bridge.rb",
     "lib/bowline/desktop/clipboard.rb",
     "lib/bowline/desktop/dialog.rb",
     "lib/bowline/desktop/dock.rb",
     "lib/bowline/desktop/host.rb",
     "lib/bowline/desktop/js.rb",
     "lib/bowline/desktop/misc.rb",
     "lib/bowline/desktop/network.rb",
     "lib/bowline/desktop/path.rb",
     "lib/bowline/desktop/proxy.rb",
     "lib/bowline/desktop/runtime.rb",
     "lib/bowline/desktop/sound.rb",
     "lib/bowline/desktop/window.rb",
     "lib/bowline/desktop/window_manager.rb",
     "lib/bowline/desktop/window_methods.rb",
     "lib/bowline/ext/array.rb",
     "lib/bowline/ext/object.rb",
     "lib/bowline/generators.rb",
     "lib/bowline/generators/application.rb",
     "lib/bowline/generators/binder.rb",
     "lib/bowline/generators/helper.rb",
     "lib/bowline/generators/migration.rb",
     "lib/bowline/generators/model.rb",
     "lib/bowline/generators/window.rb",
     "lib/bowline/helpers.rb",
     "lib/bowline/initializer.rb",
     "lib/bowline/library.rb",
     "lib/bowline/logging.rb",
     "lib/bowline/platform.rb",
     "lib/bowline/tasks/app.rake",
     "lib/bowline/tasks/bowline.rb",
     "lib/bowline/tasks/database.rake",
     "lib/bowline/tasks/libs.rake",
     "lib/bowline/tasks/log.rake",
     "lib/bowline/tasks/misc.rake",
     "lib/bowline/version.rb",
     "lib/bowline/watcher.rb",
     "templates/Gemfile",
     "templates/Rakefile",
     "templates/binder.rb",
     "templates/config/application.yml",
     "templates/config/boot.rb",
     "templates/config/database.yml",
     "templates/config/environment.rb",
     "templates/config/environments/development.rb",
     "templates/config/environments/production.rb",
     "templates/gitignore",
     "templates/helper.rb",
     "templates/main_window.rb",
     "templates/migration.rb",
     "templates/model.rb",
     "templates/public/icon.png",
     "templates/public/index.html",
     "templates/public/javascripts/application.js",
     "templates/public/stylesheets/application.css",
     "templates/script/build",
     "templates/script/console",
     "templates/script/generate",
     "templates/script/init",
     "templates/script/run",
     "templates/window.rb",
     "vendor/progressbar.rb"
  ]
  s.homepage = %q{http://github.com/maccman/bowline}
  s.post_install_message = %q{    **************************************************

      Thank you for installing Bowline.
      
      If you're on Linux, please install the WebKit library:
        sudo apt-get install libwebkit-dev

    **************************************************
}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Bowline GUI framework}
  s.test_files = [
    "examples/tweet.rb",
     "examples/tweets_binder.rb",
     "examples/users.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<templater>, [">= 0.3.2"])
      s.add_runtime_dependency(%q<activesupport>, [">= 3.0.0.beta4"])
      s.add_runtime_dependency(%q<rubyzip2>, [">= 2.0.1"])
      s.add_runtime_dependency(%q<supermodel>, [">= 0.1.3"])
      s.add_runtime_dependency(%q<bowline-bundler>, [">= 0.0.1"])
    else
      s.add_dependency(%q<templater>, [">= 0.3.2"])
      s.add_dependency(%q<activesupport>, [">= 3.0.0.beta4"])
      s.add_dependency(%q<rubyzip2>, [">= 2.0.1"])
      s.add_dependency(%q<supermodel>, [">= 0.1.3"])
      s.add_dependency(%q<bowline-bundler>, [">= 0.0.1"])
    end
  else
    s.add_dependency(%q<templater>, [">= 0.3.2"])
    s.add_dependency(%q<activesupport>, [">= 3.0.0.beta4"])
    s.add_dependency(%q<rubyzip2>, [">= 2.0.1"])
    s.add_dependency(%q<supermodel>, [">= 0.1.3"])
    s.add_dependency(%q<bowline-bundler>, [">= 0.0.1"])
  end
end

