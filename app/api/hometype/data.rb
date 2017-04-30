module Hometype
    class Data < Grape::API
        format :json
        content_type :json, "application/json;charset=utf-8"

        resource :hometype do
            desc "List all homestay type"
            get do
                HomeType.all
            end

            desc "List all homestay type by id"
            get "id=:id" do
                begin
                    HomeType.find_by_id(params[:id])
                rescue ActiveRecord::RecordNotFound
                    error!({ status: :not_found }, 404)
                end
            end
            
            desc "create a new home stay type"
## This takes care of parameter validation
            params do
                requires :home_type_name, type: String
            end
## This takes care of creating employee
            post do
                HomeType.create!({
                                     home_type_name:params[:home_type_name],
                                     image:params[:image]
                                 })
            end

            desc "delete an home stay type"
            params do
                requires :id, type: Integer
            end
            delete 'id=:id' do
                HomeType.find(params[:id]).destroy!
            end
    
            desc "update an hometype"
            params do
                requires :id, type: Integer
                requires :home_type_name, type:String
            end
            put ':id' do
                HomeType.find(params[:id]).update({
                                                      home_type_name:params[:home_type_name],
                                                      image:params[:image]
                                                  })
            end

        end
    end
end