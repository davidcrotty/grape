module Controller
  class BikeController < Grape::API
    version 'v1'
    format :json

    resource :bike do
      desc 'Manages bikes'
      get '/:bikeid' do
        { id: params[:bikeid], frame: 'shimano' }
      end
    end
  end
end
