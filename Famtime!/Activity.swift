//
//  Activity.swift
//  tableViewFam
//
//  Created by Khairani Ummah on 27/04/19.
//  Copyright © 2019 Khairani Ummah. All rights reserved.
//

import Foundation
import UIKit

public enum PackageName: String {
    case toddy1 = "Toddy 1"
    case toddy2 = "Toddy 2"
    case tiny1 = "Tiny 1"
    case tiny2 = "Tweeny 1"
}

enum DayType: String{
    case day1 = "Day 1 - Independent"
    case day2 = "Day 2 - Expression"
    
}

class Activity {
    var activityID : String = ""
    var activityName : String = ""
    var image : UIImage
    var packageNum : Int
//    var packageType : PackageName
//    var day : DayType
    var day : String
    var description : String
    var dayNight : String
    var age : String
    var indoor : String
    var duration : Int
//    var state: Bool
    
    init(packageNum: Int, activityID: String, activityName: String, imageName: String, day: String, description : String, dayNight : String, age : String, indoor : String, duration : Int) {
        self.activityName = activityName
        self.packageNum = packageNum
        self.activityID = activityID
        if let img = UIImage(named: imageName) {
            image = img
        } else {
            image = UIImage(named: "P1.png")!
        }
         self.day = day
         self.description = description
         self.dayNight = dayNight
         self.age = age
         self.indoor = indoor
         self.duration = duration
    }
}
