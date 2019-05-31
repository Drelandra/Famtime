//
//  ViewController.swift
//  tableViewFam
//
//  Created by Khairani Ummah on 27/04/19.
//  Copyright © 2019 Khairani Ummah. All rights reserved.
//

import UIKit

class ViewController2: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let defaults = UserDefaults.standard
    var packageNum = Int()
    var activities: [Activity] {
        var activityList = ActivityList.activityLists()
        return activityList[packageNum-1].activity }
   
   


    @IBOutlet weak var popUpView: UIView!
    @IBOutlet weak var OnOffBullet: UIImageView!
    @IBOutlet weak var addToPlan: UIButton!
    @IBOutlet weak var backgroundPackage: UIImageView!
    @IBOutlet var tableView: UITableView!
    @IBOutlet weak var listActivity: UITableView!
    @IBOutlet weak var eachActivity: UITableViewCell!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(loadView), name: NSNotification.Name(rawValue: "load"), object: nil)
        backgroundPackage.image = UIImage(named: "P\(packageNum)Label.png")
        if UserDefaults.standard.bool(forKey: "subscribeP\(packageNum)") == true {
            addToPlan.isHidden = true
            popUpView.isHidden = true
        } else {
            addToPlan.isHidden = false
            popUpView.isHidden = true
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tableView.reloadData()

    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ActivityCell", for: indexPath)
        
        let activity = activities[indexPath.row]
        cell.textLabel?.text = activity.activityName
        cell.detailTextLabel?.text = activity.day
        if UserDefaults.standard.bool(forKey: "done\(activity.activityID)") == true
        {
            cell.imageView?.image = UIImage(named: "OnBullet.png")
            
        }
        else
        {
            cell.imageView?.image = UIImage(named: "OffBullet.png")
        }
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return activities.count
    }
    
    
    private func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // your cell coding
        return UITableViewCell()
    }
    
    
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
        let activity = activities[indexPath.row]
        vc?.getName = activity.activityName
        vc?.getImage = activity.image
        vc?.getPackageNum = activity.packageNum
        vc?.getID = activity.activityID
        vc?.getDesc = activity.description
        vc?.getShift = activity.dayNight
        vc?.getDuration = activity.duration
        vc?.getPlace = activity.indoor
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    

    @IBAction func addToPlanTapped(_ sender: UIButton) {
        defaults.set(true, forKey: "subscribeP\(packageNum)")
        addToPlan.isHidden = true
        popUpView.isHidden = false
    }
    @IBAction func doneTickPressed(_ sender: UIButton) {
        popUpView.isHidden = true
    }
    
}

