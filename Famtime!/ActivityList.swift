//
//  ActivityList.swift
//  tableViewFam
//
//  Created by Khairani Ummah on 27/04/19.
//  Copyright © 2019 Khairani Ummah. All rights reserved.
//


// package1: Day 1: Learn Teeth Brushing, Day 2: Learn to Queue, Day 3: Tell a Bedtime Story, Day 4: Dance Time, Day 5: DIY bottle rocket, Day 6: Baking Cookie Star, Day 7: Go to Planetarium
// package2: Day 1: Choose What to Wear, Day 2: Sing Humpty Dumpty, Day 3: Watch Cartoon, Day 4: Teach Polite Phrases, Day 5: Learn to Swim, Day 6: Help to Cook, Day 7: Greet New People



import Foundation

class ActivityList
{
    var package : String = ""
    var activity : [Activity]
    var packageID : Int
    var packageImg : String
    var packageSubs : String
    
    init(thispackage: String, thisactivity: [Activity], thispackageID: Int, thispackageImg: String, thispackageSubs : String) {
        package = thispackage
        activity = thisactivity
        packageID = thispackageID
        packageImg = thispackageImg
        packageSubs = thispackageSubs
        
    }
    
    class func activityLists() -> [ActivityList]{
        return [self.package1(), self.package2(), self.package3(), self.package4(), self.package5()]
    }
    
    private class func package1() -> ActivityList {
        // package1: Day 1: Learn Teeth Brushing, Day 2: Learn to Queue, Day 3: Tell a Bedtime Story, Day 4: Dance Time, Day 5: DIY bottle rocket, Day 6: Baking Cookie Star, Day 7: Go to Planetarium
        var activities = [Activity]()
        activities.append(Activity(packageNum: 1, activityID: "P1D1", activityName: "Learn Teeth Brushing", imageName: "P1D1.png", day: "Day 1", description :
            "Encourage your children to brush their teeth.It's never too early to teach your children how to brush their teeth! Happy Teeth, Healthy Kids.", dayNight : "Day/Night", age : "3-6 yo", indoor : "Indoor", duration : 20))
        activities.append(Activity(packageNum: 1, activityID: "P1D2", activityName: "Learn to Queue", imageName: "P1D2.png", day: "Day 2", description :
            "This skill is needed for kids for waiting and walking in line. In order to get from point A to point B safely and appropriately while walking in a line, kids have to be able to regulate their behaviors and impulses. This means regulating their speed, and maintaining appropriate body space with their peers. To make this activity fun, do it while singing.", dayNight : "Day/Night", age : "3-6 yo", indoor : "Indoor", duration : 30))
        activities.append(Activity(packageNum: 1, activityID: "P1D3", activityName: "Tell a Bedtime Story", imageName: "P1D3.png", day: "Day 3", description :
            "This way of telling a bedtime story is by far the most fun. It takes creativity and being able to improve on the spot. The inspiration for the story can literally come from anywhere. Ask your child to pick two stuffed animals, and you can make a story out of that using them as the puppets. All you need is a simple plot with a positive moral. This is a great way to help in whatever stage your child is at in development.", dayNight : "Day/Night", age : "3-6 yo", indoor : "Indoor", duration : 45))
        activities.append(Activity(packageNum: 1, activityID: "P1D4", activityName: "Dance Time", imageName: "P1D4.png", day: "Day 4", description :
            "Children are full of bubbling energy, so jumping to the beats will keep them physically active and excited. Pick up a few songs to set the mood and let’s dance together!", dayNight : "Day/Night", age : "3-6 yo", indoor : "Indoor", duration : 30))
        activities.append(Activity(packageNum: 1, activityID: "P1D5", activityName: "DIY bottle rocket", imageName: "P1D5.png", day: "Day 5", description :
            """
            Materials: Birthday hat, plastic bubble from toy vending machine, hot glue gun, water bottle, scissors, paper, color craft paper, lids from bottle and jar, black marker, glue stick, sock.
            Instructions: http://tiny.cc/0d4v5y
            """, dayNight : "Day/Night", age : "3-6 yo", indoor : "Indoor", duration : 45))
        activities.append(Activity(packageNum: 1, activityID: "P1D6", activityName: "Baking Cookie Star", imageName: "P1D6.png", day: "Day 6", description :
            """
            Children Everyone needs a good sugar cookie recipe. If you can master the very simple technique behind this one dough, you have several variations at your disposal, most likely without a trip to the grocery store.
                        
                        Ingredients: 3 ½  cups/510 grams all-purpose flour, 1  teaspoon baking powder, 1  teaspoon kosher salt,
                        1 ½  cups/340 grams unsalted butter (3 sticks), at room temperature, 1 ¼  cups/250 grams granulated sugar, 2  large eggs, 1  teaspoon vanilla extract, frosting, glaze or royal icing, edible glitter or food-grade luster dust
                        
                        Preparation: http://tiny.cc/hv4v5y
            """, dayNight : "Day/Night", age : "3-6 yo", indoor : "Indoor", duration : 60))
        activities.append(Activity(packageNum: 1, activityID: "P1D7", activityName: "Go to Planetarium", imageName: "P1D7.png", day: "Day 7", description :
            "Inside the studio of Planetarium, children can see constellations, the entire universe and our galaxy (Milky Way). Family members can see how the earth from the outer space is and if there were life somewhere than on earth, also all of the satellites which have travelled millions of light speed. Well, we never know, who knows there might be a life somewhere else.", dayNight : "Day/Night", age : "3-6 yo", indoor : "Indoor", duration : 180))
        
        
        return ActivityList(thispackage: "Twinkle", thisactivity: activities, thispackageID: 1, thispackageImg: "P1Label.png", thispackageSubs : "P1Subs.png")
    }
    
    
    private class func package2() -> ActivityList {
        // package2: Day 1: Choose What to Wear, Day 2: Sing Humpty Dumpty, Day 3: Watch Cartoon, Day 4: Teach Polite Phrases, Day 5: Learn to Swim, Day 6: Help to Cook, Day 7: Greet New People
        var activities = [Activity]()
        activities.append(Activity(packageNum: 2, activityID: "P2D1", activityName: "Choose What to Wear", imageName: "P2D1.png", day: "Day 1", description :
            """
            If your child has suddenly become very vocal about her wardrobe, congratulations: It's a sign that she's growing up. "Preschoolers are also at a stage where they're trying to assert their independence and test limits," says Alanna Levine, M.D., a spokeswoman for the American Academy of Pediatrics. "Getting dressed provides an opportunity to put both things into practice." That doesn't mean every morning has to be a showdown, however.
            """, dayNight : "Day/Night", age : "3-6 yo", indoor : "Indoor", duration : 20))
        activities.append(Activity(packageNum: 2, activityID: "P2D2", activityName: "Sing Humpty Dumpty", imageName: "P1D2.png", day: "Day 2", description :
            "This is Sing Humpty Dumpty", dayNight : "Day/Night", age : "3-6 yo", indoor : "Indoor", duration : 20))
        activities.append(Activity(packageNum: 2, activityID: "P2D3", activityName: "Watch Cartoon", imageName: "P1D3.png", day: "Day 3", description :
            "This is  Watch Cartoon", dayNight : "Day/Night", age : "3-6 yo", indoor : "Indoor", duration : 20))
        activities.append(Activity(packageNum: 2, activityID: "P2D4", activityName: "  Teach Polite Phrases", imageName: "P1D4.png", day: "Day 4", description :
            "This is Teach Polite Phrases", dayNight : "Day/Night", age : "3-6 yo", indoor : "Indoor", duration : 20))
        activities.append(Activity(packageNum: 2, activityID: "P2D5", activityName: "  Learn to Swim", imageName: "P1D5.png", day: "Day 5", description :
            "This is Learn to Swim", dayNight : "Day/Night", age : "3-6 yo", indoor : "Indoor", duration : 20))
        activities.append(Activity(packageNum: 2, activityID: "P2D6", activityName: "Help to Cook", imageName: "P1D6.png", day: "Day 6", description :
            "This is  Help to Cook", dayNight : "Day/Night", age : "3-6 yo", indoor : "Indoor", duration : 20))
        activities.append(Activity(packageNum: 2, activityID: "P2D7", activityName: "Greet New People", imageName: "P1D7.png", day: "Day 7", description :
            "This is Greet New People", dayNight : "Day/Night", age : "3-6 yo", indoor : "Indoor", duration : 20))
        
    
        
        return ActivityList(thispackage: "Humpty", thisactivity: activities, thispackageID: 2, thispackageImg: "P2Label.png", thispackageSubs : "P2Subs.png")
    }
    
    
    private class func package3() -> ActivityList {
        
        
        var activities = [Activity]()
        activities.append(Activity(packageNum: 3, activityID: "P3D1", activityName: "Memorize Address", imageName: "P3D1.png", day: "Day 1", description :
            "When you have kids, it’s crucial to get them to learn their personal information by heart in case of emergencies. Perish the thought, but if your kid were ever lost or in trouble, knowing your phone number and home address could potentially help them get out of a sticky situation. The trouble is, kids just don’t want to learn that stuff.\n\nNow there are plenty of mnemonic devices to help them memorize stuff such as as setting names and numbers to a song or rhyme. But if those don’t work, what is a parent to do? This mom recently shared her genius trick on the /r/Parenting subreddit, describing how she found the perfect way to get her kids motivated to learn their phone number and address.", dayNight : "Day/Night", age : "3-6 yo", indoor : "Indoor", duration : 20))
        
        activities.append(Activity(packageNum: 2, activityID: "P3D2", activityName: "Sing Humpty Dumpty", imageName: "P1D2.png", day: "Day 2", description :
            "This is Sing Humpty Dumpty", dayNight : "Day/Night", age : "3-6 yo", indoor : "Indoor", duration : 20))
        activities.append(Activity(packageNum: 2, activityID: "P3D3", activityName: "Watch Cartoon", imageName: "P1D3.png", day: "Day 3", description :
            "This is  Watch Cartoon", dayNight : "Day/Night", age : "3-6 yo", indoor : "Indoor", duration : 20))
        activities.append(Activity(packageNum: 2, activityID: "P3D4", activityName: "  Teach Polite Phrases", imageName: "P1D4.png", day: "Day 4", description :
            "This is Teach Polite Phrases", dayNight : "Day/Night", age : "3-6 yo", indoor : "Indoor", duration : 20))
        activities.append(Activity(packageNum: 2, activityID: "P3D5", activityName: "  Learn to Swim", imageName: "P1D5.png", day: "Day 5", description :
            "This is Learn to Swim", dayNight : "Day/Night", age : "3-6 yo", indoor : "Indoor", duration : 20))
        activities.append(Activity(packageNum: 2, activityID: "P3D6", activityName: "Help to Cook", imageName: "P1D6.png", day: "Day 6", description :
            "This is  Help to Cook", dayNight : "Day/Night", age : "3-6 yo", indoor : "Indoor", duration : 20))
        activities.append(Activity(packageNum: 2, activityID: "P3D7", activityName: "Greet New People", imageName: "P1D7.png", day: "Day 7", description :
            "This is Greet New People", dayNight : "Day/Night", age : "3-6 yo", indoor : "Indoor", duration : 20))
        
        
        return ActivityList(thispackage: "DoReMi", thisactivity: activities, thispackageID: 3, thispackageImg: "P3Label.png", thispackageSubs : "P3Subs.png")
    }
    
    private class func package4() -> ActivityList {
        
        
        var activities = [Activity]()
        activities.append(Activity(packageNum: 4, activityID: "P4D1", activityName: "Pack School Bag", imageName: "P4D1.png", day: "Day 1", description :
            "Those of us with school-aged children sometimes marvel at the amount of stuff even elementary school kids have to carry around. In addition to notebooks, pencil cases and lunch bags, students must often make room inside their bags for gym clothes and sporting equipment, wallets and keys. Finding a bag that can fit everything is therefore essential. To prevent kids from carrying too much weight on one side, the bag should be carried on the back and have two straps that distribute the weight evenly. But the way the interior space is divided also plays an important role – heavier objects should rest as closely as possible against the back.", dayNight : "Day/Night", age : "3-6 yo", indoor : "Indoor", duration : 20))
        
        activities.append(Activity(packageNum: 2, activityID: "P4D2", activityName: "Sing Humpty Dumpty", imageName: "P1D2.png", day: "Day 2", description :
            "This is Sing Humpty Dumpty", dayNight : "Day/Night", age : "3-6 yo", indoor : "Indoor", duration : 20))
        activities.append(Activity(packageNum: 2, activityID: "P4D3", activityName: "Watch Cartoon", imageName: "P1D3.png", day: "Day 3", description :
            "This is  Watch Cartoon", dayNight : "Day/Night", age : "3-6 yo", indoor : "Indoor", duration : 20))
        activities.append(Activity(packageNum: 2, activityID: "P4D4", activityName: "  Teach Polite Phrases", imageName: "P1D4.png", day: "Day 4", description :
            "This is Teach Polite Phrases", dayNight : "Day/Night", age : "3-6 yo", indoor : "Indoor", duration : 20))
        activities.append(Activity(packageNum: 2, activityID: "P4D5", activityName: "  Learn to Swim", imageName: "P1D5.png", day: "Day 5", description :
            "This is Learn to Swim", dayNight : "Day/Night", age : "3-6 yo", indoor : "Indoor", duration : 20))
        activities.append(Activity(packageNum: 2, activityID: "P4D6", activityName: "Help to Cook", imageName: "P1D6.png", day: "Day 6", description :
            "This is  Help to Cook", dayNight : "Day/Night", age : "3-6 yo", indoor : "Indoor", duration : 20))
        activities.append(Activity(packageNum: 2, activityID: "P4D7", activityName: "Greet New People", imageName: "P1D7.png", day: "Day 7", description :
            "This is Greet New People", dayNight : "Day/Night", age : "3-6 yo", indoor : "Indoor", duration : 20))
        
        return ActivityList(thispackage: "JigJig", thisactivity: activities, thispackageID: 4, thispackageImg: "P4Label.png", thispackageSubs : "P4Subs.png")
    }
    
    private class func package5() -> ActivityList {
        
        var activities = [Activity]()
        activities.append(Activity(packageNum: 5, activityID: "P5D1", activityName: "Save Money", imageName: "P5D1.png", day: "Day 1", description :
            "Every teen looks forward to that first paycheck — but few know what to do with their newfound financial freedom. Spending and saving habits start early in life, so it’s never too early to start teaching teens the importance of saving money.", dayNight : "Day/Night", age : "13-16 yo", indoor : "Indoor", duration : 15))
        
        activities.append(Activity(packageNum: 5, activityID: "P5D2", activityName: "Do Karaoke Pop Song", imageName: "P5D2.png", day: "Day 2", description :
            "Firstly, Karaoke is a great way to get your children interested in music and to help them find their hidden talent for singing. While it starts as simply as singing along to their favorite artist, the melodies and beats will be running through your child’s brain and helping to develop their capacity for music. \n\nhttps://www.starwalkkids.com/kids/musical-instruments/benefits-karaoke-kids/", dayNight : "Day/Night", age : "13-16 yo", indoor : "Indoor", duration : 30))
        
        activities.append(Activity(packageNum: 5, activityID: "P5D3", activityName: "Watch Film", imageName: "P5D3.png", day: "Day 3", description :
            "It’s clear that film provokes all kinds of emotions. It can make you laugh, cry, suffer, and even find the strength you need to face your problems. So why not channel all of this into a form of therapy?\n\nhttps://exploringyourmind.com/film-therapy-benefits-watching-movies/", dayNight : "Day/Night", age : "13-16 yo", indoor : "Indoor", duration : 90))
        activities.append(Activity(packageNum: 2, activityID: "P5D4", activityName: "  Teach Polite Phrases", imageName: "P1D4.png", day: "Day 4", description :
            "This is Teach Polite Phrases", dayNight : "Day/Night", age : "3-6 yo", indoor : "Indoor", duration : 20))
        activities.append(Activity(packageNum: 2, activityID: "P5D5", activityName: "  Learn to Swim", imageName: "P1D5.png", day: "Day 5", description :
            "This is Learn to Swim", dayNight : "Day/Night", age : "3-6 yo", indoor : "Indoor", duration : 20))
        activities.append(Activity(packageNum: 2, activityID: "P5D6", activityName: "Help to Cook", imageName: "P1D6.png", day: "Day 6", description :
            "This is  Help to Cook", dayNight : "Day/Night", age : "3-6 yo", indoor : "Indoor", duration : 20))
        activities.append(Activity(packageNum: 2, activityID: "P5D7", activityName: "Greet New People", imageName: "P1D7.png", day: "Day 7", description :
            "This is Greet New People", dayNight : "Day/Night", age : "3-6 yo", indoor : "Indoor", duration : 20))
        
        return ActivityList(thispackage: "PollyPut", thisactivity: activities, thispackageID: 5, thispackageImg: "P5Label.png", thispackageSubs : "P5Subs.png")
    }
    private class func package6() -> ActivityList {
        
        var activities = [Activity]()
        activities.append(Activity(packageNum: 5, activityID: "P5D1", activityName: "Save Money", imageName: "P5D1.png", day: "Day 1", description :
            "Every teen looks forward to that first paycheck — but few know what to do with their newfound financial freedom. Spending and saving habits start early in life, so it’s never too early to start teaching teens the importance of saving money.", dayNight : "Day/Night", age : "13-16 yo", indoor : "Indoor", duration : 15))
        
        activities.append(Activity(packageNum: 5, activityID: "P5D2", activityName: "Do Karaoke Pop Song", imageName: "P5D2.png", day: "Day 2", description :
            "Firstly, Karaoke is a great way to get your children interested in music and to help them find their hidden talent for singing. While it starts as simply as singing along to their favorite artist, the melodies and beats will be running through your child’s brain and helping to develop their capacity for music. \n\nhttps://www.starwalkkids.com/kids/musical-instruments/benefits-karaoke-kids/", dayNight : "Day/Night", age : "13-16 yo", indoor : "Indoor", duration : 30))
        
        activities.append(Activity(packageNum: 5, activityID: "P5D3", activityName: "Watch Film", imageName: "P5D3.png", day: "Day 3", description :
            "It’s clear that film provokes all kinds of emotions. It can make you laugh, cry, suffer, and even find the strength you need to face your problems. So why not channel all of this into a form of therapy?\n\nhttps://exploringyourmind.com/film-therapy-benefits-watching-movies/", dayNight : "Day/Night", age : "13-16 yo", indoor : "Indoor", duration : 90))
        activities.append(Activity(packageNum: 2, activityID: "P5D4", activityName: "  Teach Polite Phrases", imageName: "P1D4.png", day: "Day 4", description :
            "This is Teach Polite Phrases", dayNight : "Day/Night", age : "3-6 yo", indoor : "Indoor", duration : 20))
        activities.append(Activity(packageNum: 2, activityID: "P5D5", activityName: "  Learn to Swim", imageName: "P1D5.png", day: "Day 5", description :
            "This is Learn to Swim", dayNight : "Day/Night", age : "3-6 yo", indoor : "Indoor", duration : 20))
        activities.append(Activity(packageNum: 2, activityID: "P5D6", activityName: "Help to Cook", imageName: "P1D6.png", day: "Day 6", description :
            "This is  Help to Cook", dayNight : "Day/Night", age : "3-6 yo", indoor : "Indoor", duration : 20))
        activities.append(Activity(packageNum: 2, activityID: "P5D7", activityName: "Greet New People", imageName: "P1D7.png", day: "Day 7", description :
            "This is Greet New People", dayNight : "Day/Night", age : "3-6 yo", indoor : "Indoor", duration : 20))
        
        return ActivityList(thispackage: "PollyPut", thisactivity: activities, thispackageID: 5, thispackageImg: "P5Label.png", thispackageSubs : "P5Subs.png")
    }
}
