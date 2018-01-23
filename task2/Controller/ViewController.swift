//
//  ViewController.swift
//  task2
//
//  Created by brst on 1/9/18.
//  Copyright © 2018 brst. All rights reserved.
//

import UIKit
import ObjectMapper
import Alamofire
import Kingfisher

class ViewController: UIViewController {

    @IBOutlet var tblView: UITableView!
    
    var userModel: RootClass?
    var datafill: [UserList]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        fetchData()
    }
    func fetchData() {
        
        let param:[String:Any] = ["popular": "0", "proximity": "0","token": "c0cdac8331126d652ac37e0cffd0ee3b", "user_id": "102", "username": "" ]
        
        ApiHit.fetchData(parameters: param) { (jsonData) in
            self.userModel = Mapper<RootClass>().map(JSONObject: jsonData)
            
            print(self.userModel?.descriptionField ?? "")
          
            self.tblView.reloadData()
           
            
        }
    }

}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tablecell", for: indexPath) as! DetailsTableViewCell
       
        let url = URL(string: datafill?[indexPath.row].profilePic ?? "")
        cell.userIcon.kf.setImage(with: url, placeholder: #imageLiteral(resourceName: "images") )
        
       cell.userName.text = datafill?[indexPath.row].username
       cell.aboutUser.text = datafill?[indexPath.row].gender
      cell.userDescription.text = datafill?[indexPath.row].aboutme
        
        cell.layer.cornerRadius = 5
        print(datafill?[indexPath.row].username ?? "")
        print(datafill?[indexPath.row].gender ?? "")
        print(datafill?[indexPath.row].aboutme ?? "")
        
       
        return cell
}

}
