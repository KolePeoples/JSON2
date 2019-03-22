//
//  DataManager.swift
//  JSON2
//
//  Created by Kole Peoples on 3/20/19.
//  Copyright © 2019 Kole Peoples. All rights reserved.
//

import UIKit

class DataManager: NSObject {

        let MYJSONURL = "https://api.myjson.com/bins/1e5uji"
    
        var dataArray = ["Nothing yet"]
    
    func getData(completion: @escaping (_ success: Data()) -> ()) {
        var success = Data()
        
        let actualURL = URL(string: MYJSONURL)
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
