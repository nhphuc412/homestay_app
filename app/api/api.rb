class API < Grape::API
    prefix 'api'
    version 'v1', using: :path
    mount Hometype::Data
    mount Home_Api::Data
    mount Rule_Api::Data
    mount Home_Rule_Api::Data
    mount Mpref_Api::Data
    mount Mcity_Api::Data
    mount Facility_Api::Data
    mount Home_Facility_Api::Data
    mount Room_Type_Api::Data
    mount Room_Api::Data
    mount Bed_Type_Api::Data
    mount Bath_Type_Api::Data
    mount Room_Facility_Api::Data
end