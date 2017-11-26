module Controller
  class BikeController < Grape::API
    version 'v1'
    format :json
    resource :bike do
      desc 'Manages bikes'

      get '/:bikeid' do
        { id: params[:bikeid], frame: 'shimano' }
      end

      params do
        requires :id, type: Integer
      end

      post do
        @profile = Profile.create_with(locked: false).find_or_create_by(username: 'Andy', area: 'foo', biography: 'bar', rank: 'buzz')
        status 204
        body false
      end
    end
  end
end
