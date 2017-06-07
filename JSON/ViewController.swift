//
//  ViewController.swift
//  JSON
//
//  Created by Yaseen on 06/06/17.
//  Copyright © 2017 Yaseen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        let url1 = URL(fileURLWithPath: "/Users/yaseen/Desktop/Exercises/JSON" )
//        print("*****************************")
//        print(url1)
//        
//        let url = URL(string: "https://api.adorable.io/avatars/list")
//        
//        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
//            if error != nil{
//                print("Error occcured")
//            }
//            else{
//                if let mydata = data {
//                    do {
//                        let myJson = try JSONSerialization.jsonObject(with: mydata, options: .mutableContainers) as AnyObject
//                        //print(myJson)
//                        if let face = myJson["face"] as AnyObject? {
//                            //print(face)
//                            print("**********************1")
//                             let mouth = face["mouth"] as? [[String: AnyObject]]
//                                print(mouth)
////                            {
////                                print("**********************2")
////                                print(mouth)
////                            }
//                            print("**********************3")
//                        }
//                    }
//                    catch{
//                        print("error occured")
//                        //error handling here
//                    }
//                    
//                }
//            }
//        }
//        task.resume()
        
        let url = Bundle.main.url(forResource: "Jdata", withExtension: "json")
        let data = NSData(contentsOf: url!)
        
        do {
            let jsonObject = try JSONSerialization.jsonObject(with: data! as Data, options: .allowFragments) as? [String: AnyObject]
            JsonParse(obbj: jsonObject!)
            
        }
        catch{
            
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

