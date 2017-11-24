module Controller
  class BikeController < Grape::API
    version 'v1'
    format :json

    resource :bike do
      desc 'Manages bikes'
      get do
        { :id => '1', :frame => 'shimano' }
      end
    end
  end
end
