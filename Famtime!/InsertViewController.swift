//
//  InsertViewController.swift
//  Famtime!
//
//  Created by Andre Elandra on 26/04/19.
//  Copyright © 2019 ADA Team 07. All rights reserved.
//

import UIKit

class InsertViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var agelabel: UILabel!
    var arrayOfImages = [UIImage]()
    var arrayofActivity = [String]()

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayOfImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as UICollectionViewCell
        let imageView = cell.viewWithTag(1) as! UIImageView
        imageView.image = arrayOfImages[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let name = arrayofActivity[indexPath.row]
    
        guard let viewController = storyboard?.instantiateViewController(withIdentifier: "ListAct") as? ViewController2 else { return }
        let package = ActivityList.activityLists()[indexPath.row]
        print(indexPath.row)
        viewController.packageNum = package.packageID
        self.navigationController?.pushViewController(viewController, animated: true)
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
//        print(activityLists)
        
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/mm/yyyy" //Your date format
        dateFormatter.timeZone = TimeZone(abbreviation: "GMT+0:00") //Current time zone
        guard let newstring = UserDefaults.standard.string(forKey: "inputdate")
            else{
                fatalError()
        }
        //according to date format your date string
        guard let date = dateFormatter.date(from: newstring) else {
            fatalError()
        }
        let dateRangeStart = Date()
        let dateRangeEnd = date
        let components = Calendar.current.dateComponents([.year], from: dateRangeEnd, to: dateRangeStart)
        let age = components.year ?? 0
        agelabel.text = String(age)+" years old."
        
        // punya Bobby
        let image1 = UIImage(named: "Toddy1")!
        let image2 = UIImage(named: "Toddy2")!
        let image3 = UIImage(named: "Toddy3")!
        let image4 = UIImage(named: "Toddy4")!
        let image5 = UIImage(named: "Toddy5")!
        let image6 = UIImage(named: "Toddy6")!
        
        for _ in 0 ..< 10 {
            arrayOfImages.append(image1)
            arrayOfImages.append(image2)
            arrayOfImages.append(image3)
            arrayOfImages.append(image4)
            arrayOfImages.append(image5)
            arrayOfImages.append(image6)
        }
        
        
        arrayOfImages = [image1,image2,image3,image4,image5,image6]
//        arrayofActivity=["Toddy1","Toddy2","Toddy3","Toddy4","Toddy5","Toddy6"]
    }
    

    //        punya Bobby
    //        let image1 = UIImage(named: "Image1Activity")!
    //        let image2 = UIImage(named: "Image2Activity")!
    
    //        for _ in 0 ..< 10 {
    //            arrayOfImages.append(image1)
    //            arrayOfImages.append(image2)
    //        }
    
    
    //      arrayOfImages = [image1,image2]
    //        arrayofActivity=["ActivityA","ActivityB"]


//
//@IBAction func showPopUp(_ sender: Any) {
//
//    let popOverDOB = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "sbPopUpID") as! PopUpViewController
//    self.addChild(popOverDOB)
//    popOverDOB.view.frame = self.view.frame
//    self.view.addSubview(popOverDOB.view)
//    popOverDOB.didMove(toParent: self)
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
