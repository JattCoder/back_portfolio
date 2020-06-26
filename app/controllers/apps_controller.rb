class AppsController < ApplicationController
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
        render json: apps
    end
end