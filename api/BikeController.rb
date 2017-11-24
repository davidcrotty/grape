module Controller
  class BikeController < Grape::API
    version 'v1'
    resource :bike do
      desc 'Manages bikes'
      get do
        'bike'
      end
    end
  end
end
