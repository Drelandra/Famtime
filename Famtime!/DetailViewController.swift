//
//  DetailViewController.swift
//  tableViewFam
//
//  Created by Khairani Ummah on 28/04/19.
//  Copyright © 2019 Khairani Ummah. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController
{
    let defaults = UserDefaults.standard
    var getImage = UIImage()
    var getName = ""
    var getPackageNum = Int()
    var getID = String()
    var getDesc = String()
    var getShift = String()
    var getDuration = Int()
    var getPlace = String()
    
    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var descAct: UILabel!
    @IBOutlet weak var detailsAct: UIImageView!
    @IBOutlet weak var dayNight: UILabel!
    @IBOutlet weak var place: UILabel!
    @IBOutlet weak var duration: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailsAct.image = getImage
        descAct.text = getDesc
        descAct.contentMode = .topLeft
        dayNight.text = getShift
        place.text = getPlace
        duration.text = "\(getDuration) minutes"
        doneButton.layer.cornerRadius = 24
        if ( UserDefaults.standard.bool(forKey: "subscribeP\(getPackageNum)") == true) && (UserDefaults.standard.bool(forKey: "done\(getID)") == false) {
            doneButton.isHidden = false
            } else if ( UserDefaults.standard.bool(forKey: "subscribeP\(getPackageNum)") == false) || (UserDefaults.standard.bool(forKey: "done\(getID)") == true){
            doneButton.isHidden = true
        labelName.text = getID
        }
          print(getID)

    }
    
    

    @IBAction func doneClicked(_ sender: UIButton, forEvent event: UIEvent) {
        
        defaults.set(true, forKey: "done\(getID)");_ = navigationController?.popViewController(animated: true)
       
        print(UserDefaults.standard.bool(forKey: "done\(getID)"))
        
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
