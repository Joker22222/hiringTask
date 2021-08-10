//
//  ViewController.swift
//  HiringTask
//
//  Created by Fernando Garay on 10/08/2021.
//

import UIKit

class Tab1ViewController: UIViewController {
    
    // MARK: Lifeclycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: IBActions
    
    @IBAction func tapNotificationButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let notificationViewController = storyboard.instantiateViewController(withIdentifier: "NotificationViewController") as! NotificationViewController
        notificationViewController.modalPresentationStyle = .fullScreen
        present(notificationViewController, animated: true, completion: nil)
    }
    
}

