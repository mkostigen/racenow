namespace :assets do
  namespace :theme do
    desc "Build the Dashkit theme and install it into the Rails app"
    task refresh: [:build, :install] do
    end

    desc "Build the Dashkit theme"
    task :build do
        Dir.chdir "../dashkit" do
          sh "npm", "install"
          sh "gulp", "build"
        end
    end

    desc "Install the Dashkit theme into the Rails app"
    task :install do
        def xcp(dir)
          dest = "./public/theme/#{dir}"
          FileUtils.mkdir_p dest
          FileUtils.cp_r Dir.glob("../dashkit/dist/assets/#{dir}/*"), dest
        end

        xcp "css"
        xcp "img/masks"
        xcp "img/covers"
        xcp "fonts"
        xcp "js"
        xcp "libs"
        puts "done"
      end
    end
end
