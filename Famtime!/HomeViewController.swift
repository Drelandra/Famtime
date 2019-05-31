////
////  HomeViewController.swift
////  Famtime!
////
////  Created by Michael Louis on 27/04/19.
////  Copyright © 2019 ADA Team 07. All rights reserved.
////
//
//import UIKit
//
//
//extension Date {
//
//    var tomorrow: Date? {
//        return Calendar.current.date(byAdding: .day, value: 1, to: self)
//    }
//}
//
//
//class HomeViewController: UIViewController {
//    @IBOutlet weak var todayDate: UILabel!
//    @IBOutlet weak var tomorrowDate: UILabel!
//
//    @IBOutlet weak var childName: UILabel!
//    @IBOutlet weak var parentName: UILabel!
//
//    @IBOutlet weak var cell1: UIView!
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        parentName.text =
//        UserDefaults.standard.string(forKey: "inputparent")
//        childName.text =
//            UserDefaults.standard.string(forKey: "inputchild")
//        //cell1.value(forKey: UserDefaults.standard.string(forKey: "subscribeP1") ?? "kosong")
//        let date = Date()
//        let today = Date()
//
//        let formatter = DateFormatter()
//        formatter.dateFormat = "MMM dd, yyyy"
//
//        let todayString = formatter.string(from: date)
//
//
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "MMM dd, yyyy"
//
//        if let tomorrow = today.tomorrow {
//            let tomorrowString = dateFormatter.string(from: tomorrow)
//
//            todayDate.text = ("Today, " + todayString)
//            tomorrowDate.text  = ("Tomorrow, " + tomorrowString)
//
//    }
//
//
//
//
//}
//}

//
//  HomeViewController.swift
//  Famtime!
//
//  Created by Michael Louis on 27/04/19.
//  Copyright © 2019 ADA Team 07. All rights reserved.
//

import UIKit


extension Date {
    
    var tomorrow: Date? {
        return Calendar.current.date(byAdding: .day, value: 1, to: self)
    }
}



class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let defaults = UserDefaults.standard
    
    var activities1: [Activity] {
        var activityList = ActivityList.activityLists()
        return activityList[0].activity
    }
    var activities2: [Activity] {
        var activityList = ActivityList.activityLists()
        return activityList[1].activity
    }
    var activities3: [Activity] {
        var activityList = ActivityList.activityLists()
        return activityList[2].activity
    }
    var activities4: [Activity] {
        var activityList = ActivityList.activityLists()
        return activityList[3].activity
    }
    
    @IBOutlet weak var todayDate: UILabel!
    @IBOutlet weak var tomorrowDate: UILabel!
    
    @IBOutlet weak var subsImg: UIImageView!
    @IBOutlet weak var childName: UILabel!
    @IBOutlet weak var parentName: UILabel!
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var listActivity: UITableView!
    @IBOutlet weak var eachActivity: UITableViewCell!
    
    var packs: [[Activity]]?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cekjumlahactivity1 = UserDefaults.standard.bool(forKey: "subscribeP1")
        let cekjumlahactivity2 = UserDefaults.standard.bool(forKey: "subscribeP2")
        let cekjumlahactivity3 = UserDefaults.standard.bool(forKey: "subscribeP3")
        let cekjumlahactivity4 = UserDefaults.standard.bool(forKey: "subscribeP4")
        
        
        if(cekjumlahactivity1 == true)
        {
            subsImg.image = UIImage(named:"P1Subs")
        }
        if(cekjumlahactivity2 == true)
        {
            subsImg.image = UIImage(named:"P2Subs")
        }
        if(cekjumlahactivity3 == true)
        {
            subsImg.image = UIImage(named:"P3Subs")
        }
        if(cekjumlahactivity4 == true)
        {
            subsImg.image = UIImage(named:"P4Subs")
        }
        
        subsImg.image = UIImage(named:"P1Subs")
        parentName.text =
            UserDefaults.standard.string(forKey: "inputparent")
        childName.text =
            UserDefaults.standard.string(forKey: "inputchild")
        
        let date = Date()
        let today = Date()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM dd, yyyy"
        
        let todayString = formatter.string(from: date)
        
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM dd, yyyy"
        
        if let tomorrow = today.tomorrow {
            let tomorrowString = dateFormatter.string(from: tomorrow)
            todayDate.text = ("Today, " + todayString)
            tomorrowDate.text  = ("Tomorrow, " + tomorrowString)
            
        }
    }
    
    func getArray() -> [[Activity]] {
        var array = [[Activity]]()
        let cekjumlahactivity1 = UserDefaults.standard.bool(forKey: "subscribeP1")
        let cekjumlahactivity2 = UserDefaults.standard.bool(forKey: "subscribeP2")
        let cekjumlahactivity3 = UserDefaults.standard.bool(forKey: "subscribeP3")
        let cekjumlahactivity4 = UserDefaults.standard.bool(forKey: "subscribeP4")
        
        
        
        if(cekjumlahactivity1 == true)
        {
            array.append(activities1)
        }
        if(cekjumlahactivity2 == true)
        {
            array.append(activities2)
        }
        if(cekjumlahactivity3 == true)
        {
            array.append(activities3)
        }
        if(cekjumlahactivity4 == true)
        {
            array.append(activities4)
        }
        
        
        return array
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        let date = Date()
        let today = Date()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM dd, yyyy"
        
        let todayString = formatter.string(from: date)
        
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM dd, yyyy"
        
        if let tomorrow = today.tomorrow {
            let tomorrowString = dateFormatter.string(from: tomorrow)
        }
        let sectionName: String
        switch section {
        case 0:
            sectionName = NSLocalizedString("Today \(todayString)", comment: "Today \(todayString)")
        case 1:
            sectionName = NSLocalizedString(tomorrowDate.text!, comment:tomorrowDate.text!)
        // ...
        default:
            sectionName = ""
        }
        return sectionName
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let cekjumlahactivity1 = UserDefaults.standard.bool(forKey: "subscribeP1")
        let cekjumlahactivity2 = UserDefaults.standard.bool(forKey: "subscribeP2")
        let cekjumlahactivity3 = UserDefaults.standard.bool(forKey: "subscribeP3")
        let cekjumlahactivity4 = UserDefaults.standard.bool(forKey: "subscribeP4")
        
        var output = 0
        
        if(cekjumlahactivity1 == true)
        {
            output = output + 1
        }
        if(cekjumlahactivity2 == true)
        {
            output = output + 1
        }
        if(cekjumlahactivity3 == true)
        {
            output = output + 1
        }
        if(cekjumlahactivity4 == true)
        {
            output = output + 1
        }
        
        if section == 0 {
            var value = 0
            for item in getArray() {
                if item.count > 0 {
                    value += 1
                }
                else
                {value = 0}
            }
            return value
        }else {
            var value = 0
            for item in getArray() {
                if item.count > 1 {
                    value += 1
                }
            }
            return value
        }
        
        
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ActivityCell", for: indexPath)
        //         let cell2 = tableView.dequeueReusableCell(withIdentifier: "ActivityCell2", for: indexPath)
        
        //        let cekjumlahactivity1 = UserDefaults.standard.bool(forKey: "subscribeP1")
        //        let cekjumlahactivity2 = UserDefaults.standard.bool(forKey: "subscribeP2")
        //        let cekjumlahactivity3 = UserDefaults.standard.bool(forKey: "subscribeP3")
        //        let cekjumlahactivity4 = UserDefaults.standard.bool(forKey: "subscribeP4")
        //
        //
        //
        //        if(cekjumlahactivity1 == true)
        //        {
        //            let activity = activities1[0]
        //            cell.textLabel?.text = activity.activityName
        //            return cell
        //        }
        //        if(cekjumlahactivity2 == true)
        //        {
        //            let activity = activities2[0]
        //            cell.textLabel?.text = activity.activityName
        //            return cell
        //        }
        //        if(cekjumlahactivity3 == true)
        //        {
        //            let activity = activities3[0]
        //            cell.textLabel?.text = activity.activityName
        //            return cell
        //        }
        //        if(cekjumlahactivity4 == true)
        //        {
        //            let activity = activities4[0]
        //            cell.textLabel?.text = activity.activityName
        //            return cell
        //        }
        if indexPath.section == 0 {
            let activity = getArray()[indexPath.row][0]
            cell.textLabel?.text = activity.activityName
            
        }
        else {
            let activity = getArray()[indexPath.row][1]
            cell.textLabel?.text = activity.activityName
        }
        
        
        //        let activity = getArray()[indexPath.row][0]
        //        cell.textLabel?.text = activity.activityName
        //        let activity2 = getArray()[indexPath.row][1]
        //        cell2.textLabel?.text = activity2.activityName
        return cell
    }
    
    
    
    //    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    //        let vc1 = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
    //        //let activity1 = activities1[indexPath.row]
    //        let activity1 = activities1[indexPath.row]
    //        vc1?.getName = activity1.activityName
    //        vc1?.getImage = activity1.image
    //        vc1?.getDesc = activity1.description
    //        vc1?.getPlace = activity1.indoor
    //        vc1?.getShift = activity1.dayNight
    //        vc1?.getPackageNum = activity1.packageNum
    //        vc1?.getID = activity1.activityID
    //        self.navigationController?.pushViewController(vc1!, animated: true)
    //
    //        let vc2 = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
    //        //let activity1 = activities1[indexPath.row]
    //        let activity2 = activities2[indexPath.row]
    //        vc2?.getName = activity2.activityName
    //        vc2?.getImage = activity2.image
    //        vc2?.getDesc = activity2.description
    //        vc2?.getPlace = activity2.indoor
    //        vc2?.getShift = activity2.dayNight
    //        vc2?.getPackageNum = activity2.packageNum
    //        vc2?.getID = activity2.activityID
    //        self.navigationController?.pushViewController(vc1!, animated: true)
    //
    //    }
}
