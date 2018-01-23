//
//  RootClass.swift
//  task2
//
//  Created by brst on 1/9/18.
//  Copyright © 2018 brst. All rights reserved.
//


import Foundation
import ObjectMapper


class RootClass : Mappable{
    
    var data : Data?
    var descriptionField : String?
    var statusCode : String?
    
    required init?(map: Map){}
   
    func mapping(map: Map)
    {
        data <- map["data"]
        descriptionField <- map["description"]
        statusCode <- map["status_code"]
        
}
}
    class Data : Mappable{
        
        var successCode : String?
        var descriptionField : String?
        var userList : [UserList]?
        
    
        required init?(map: Map){}
    
        func mapping(map: Map)
        {
            successCode <- map["Success_code"]
            descriptionField <- map["description"]
            userList <- map["user_list"]
            
}
}
        class UserList :  Mappable{
            
            var aboutme : String?
            var age : String?
            var country : String?
            var createdAt : String?
            var deviceToken : String?
            var distance : String?
            var email : String?
            var gender : String?
            var headline : String?
            var lat : String?
            var location : String?
            var longField : String?
            var profilePic : String?
            var socialId : String?
            var token : String?
            var type : String?
            var userId : String?
            var username : String?
            
            
          
            required init?(map: Map){}
         
            
            func mapping(map: Map)
            {
                aboutme <- map["aboutme"]
                age <- map["age"]
                country <- map["country"]
                createdAt <- map["created_at"]
                deviceToken <- map["device_token"]
                distance <- map["distance"]
                email <- map["email"]
                gender <- map["gender"]
                headline <- map["headline"]
                lat <- map["lat"]
                location <- map["location"]
                longField <- map["long"]
                profilePic <- map["profile_pic"]
                socialId <- map["social_id"]
                token <- map["token"]
                type <- map["type"]
                userId <- map["user_id"]
                username <- map["username"]
                
}

}

