////
////  ProfileViewController.swift
////  Famtime!
////
////  Created by Khairani Ummah on 30/04/19.
////  Copyright © 2019 ADA Team 07. All rights reserved.
////
//
//import UIKit
//
//class ProfileViewController: UIViewController,  UITableViewDelegate, UITableViewDataSource {
//    @IBOutlet weak var subscribeTable: UITableView!
//    let subscribe = getSubs()
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//    }
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "subsTable", for: indexPath)
//        
//        let subs = getSubs[indexPath.row]
//        if subs == true {
//            cell.imageView?.image = UIImage(named: "P\([indexPath.row])Subs")
//        } else {
//            tableView.deleteRows(at: [indexPath], with: .fade)
//        }
//       
//        return cell
//    }
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        var count : Int = 0
//        if subscribe[0] == true {
//            count = count + 1
//        } else {
//            count = count + 0
//        }
//        if subscribe[1] == true {
//            count = count + 1
//        } else {
//            count = count + 0
//        }
//        if subscribe[2] == true {
//            count = count + 1
//        } else {
//            count = count + 0
//        }
//        if subscribe[3] == true {
//            count = count + 1
//        } else {
//            count = count + 0
//        }
//        if subscribe[4] == true {
//            count = count + 1
//        } else {
//            count = count + 0
//        }
//        
//        return count
//    }
//    
//    
//    private func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        // your cell coding
//        return UITableViewCell()
//    }
//    
//    
////    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
////        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
////        let activity = activities[indexPath.row]
////        vc?.getName = activity.activityName
////        vc?.getImage = activity.image
////        vc?.getPackageNum = activity.packageNum
////        vc?.getID = activity.activityID
////        vc?.getDesc = activity.description
////        vc?.getShift = activity.dayNight
////        vc?.getDuration = activity.duration
////        vc?.getPlace = activity.indoor
////        self.navigationController?.pushViewController(vc!, animated: true)
////    }
//    
//    class getSubs -> [Bool]{
//        var array = [Bool]()
//        if UserDefaults.standard.bool(forKey: "subscribeP1") == true {
//            array[0] = true
//        } else {
//            array[0] = false
//        }
//        
//        if UserDefaults.standard.bool(forKey: "subscribeP2") == true {
//            array[1] = true
//        } else {
//            array[1] = false
//        }
//        
//        if UserDefaults.standard.bool(forKey: "subscribeP3") == true {
//            array[2] = true
//        } else {
//            array[2] = false
//        }
//        
//        if UserDefaults.standard.bool(forKey: "subscribeP4") == true {
//            array[3] = true
//        } else {
//            array[3] = false
//        }
//        
//        if UserDefaults.standard.bool(forKey: "subscribeP5") == true {
//            array[4] = true
//        } else {
//            array[4] = false
//        }
//        return array
//    }
//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
//    */
//
//}
