class HomeController < ApplicationController
    def index
        apps = []
        Apps.all.each do |app|
            apps << {
                    name: app.name,
                    description: app.description,
                    source: app.source,
                    live: app.live,
                    images: Images.where(app_id: app.id)
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