//
//  DataManager.swift
//  JSON2
//
//  Created by Kole Peoples on 3/20/19.
//  Copyright © 2019 Kole Peoples. All rights reserved.
//

import UIKit

class MovieDataController: NSObject {

    let MYJSONURL = "https://api.myjson.com/bins/1e5uji"
    
    var dataModel: Any?
    
    func getRebootData(completion: @escaping (_ dataModel: MovieDataModel) -> ()) {
        
        let actualURL = URL(string: MYJSONURL)
        
        let dataTask = URLSession.shared.dataTask(with: actualURL!) { (data, response, error) in
            guard let data = data else {
                return
            }
            do {
                print(data.description)
                
                let decoder = JSONDecoder()
                let mediaData = try
                    decoder.decode(MovieDataModel.self,
                    from: data)
                
                self.dataModel = mediaData
                
            } catch let err {
                print("Err",err)
            }
            
            DispatchQueue.main.sync {
                completion(self.dataModel as! MovieDataModel)
            }
        
        }
        
        dataTask.resume()
        
    }
}
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
