class JobsController < ApplicationController
    def index
        #byebug
        render json: {"Hello": 'World'}
    end

    def newJob
        importantParams = ['name', 'icon', 'title', 'responsibility', 'action']
        if params['name'] && params['icon'] && params['title']
            render json: Jobs.new({name: params['name'], icon: params['icon'], title: params['title'], responsibility: ''}).save
        else
            temp = params
            byebug
            params.length.times { |n|
                byebug
                if temp.include? importantParams[n]
                    temp.delete(importantParams[n])
                end
            }
            inputs = {
                'valid': {
                    'name': params['name'],
                    'icon': params['icon'],
                    'title': params['title'],
                    'responsibility': params['responsibility']
                },
                'invalid': temp
            }
            render json: inputs
        end
    end
end