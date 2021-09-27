class HomeController < ApplicationController
    def index
        apps = []
        Apps.all.each do |app|
            apps << {
                    name: app.name,
                    icon: app.icon,
                    shortDesc: app.shortDesc,
                    description: app.description,
                    images: app.images,
                }
        end
        render json: {
            home: Home.all[0],
            about: About.all[0],
            apps: apps,
            languages: Languages.all,
            jobs: Jobs.all,
            education: Education.all,
        }
    end

    def create
        addone = Home.all[0]
        addone.likes = (addone.likes + params[:likes])
        addone.save
        render json: Home.all[0]
    end
end