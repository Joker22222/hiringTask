//
//  NotificationViewModel.swift
//  HiringTask
//
//  Created by Fernando Garay on 10/08/2021.
//

import Foundation
import UIKit

class NotificationViewModel {
    
    var notifications : [Notification] = [Notification]()
        
    func loadData(){
        var notifications : [Notification] = [Notification]()
        notifications.append(Notification.init(title: "Matteo liked your video", image:UIImage(imageLiteralResourceName: "image1"), read: false, boldText: ["Matteo"], isProfileNotification: false, imageType: .square))
        notifications.append(Notification.init(title: "matias is now following you", image:UIImage(imageLiteralResourceName: "image2"), read: false, boldText: ["matias"], isProfileNotification: true, imageType: .circle))
        notifications.append(Notification.init(title: "There's a new challenge for you to check out", image:UIImage(imageLiteralResourceName: "image3"), read: false, boldText: [], isProfileNotification: false, imageType: .square))
        notifications.append(Notification.init(title: "New Toilet Paper Challenge. Check it out! ", image:UIImage(imageLiteralResourceName: "image4"), read: true, boldText: ["Toilet", "Paper", "Challenge"], isProfileNotification: false, imageType: .square))
        notifications.append(Notification.init(title: "Check out Anton's profile", image:UIImage(imageLiteralResourceName: "image5"), read: true, boldText: ["Anton"], isProfileNotification: false, imageType: .circle))
        notifications.append(Notification.init(title: "Here is a new video we like", image:UIImage(imageLiteralResourceName: "image6"), read: true, boldText: ["new, video"], isProfileNotification: false, imageType: .circle))
        notifications.append(Notification.init(title: "Here is a profile we like", image:UIImage(imageLiteralResourceName: "image7"), read: true, boldText: ["profile"], isProfileNotification: false, imageType: .circle))
        self.notifications = notifications
    }
    
    func setNotificationRead(index: Int){
        notifications[index].read = true
    }
}
