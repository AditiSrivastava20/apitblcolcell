//
//  ApiHit.swift
//  task2
//
//  Created by brst on 1/9/18.
//  Copyright © 2018 brst. All rights reserved.
//

import Foundation
import Alamofire

class ApiHit {
    
    class func fetchData(parameters:[String:Any], completionHandler: @escaping (Any?) -> ())  {
        
        
        Alamofire.request("http://34.215.93.147/swipr/api/web/index.php/v1/users/filterfordiscovery", method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: nil).responseJSON { (response:DataResponse<Any>) in
            
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    do{
                        let json : Any! = try JSONSerialization.jsonObject(with: response.data!, options: JSONSerialization.ReadingOptions.mutableContainers)
                        
                        
                        completionHandler(json)
                    }
                    catch {
                        print("error occured")
                    }
                }
                break
                
            case .failure(_):
                print(response.result.error ?? "error")
                break
                
            }
        }
    }
}

