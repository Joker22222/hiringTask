//
//  NotificationViewController.swift
//  HiringTask
//
//  Created by Fernando Garay on 10/08/2021.
//

import UIKit

class NotificationViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    private var viewModel: NotificationViewModel = NotificationViewModel()

    // MARK: Lifeclycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.loadData()
    }
    
    // MARK: IBActions
    
    @IBAction func tapClose(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    // MARK: Class Methods
    
    func goToProfileViewController(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let notificationViewController = storyboard.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
        notificationViewController.modalPresentationStyle = .fullScreen
        present(notificationViewController, animated: true, completion: nil)
    }
    
}

extension NotificationViewController: UITableViewDelegate, UITableViewDataSource {
    
    // MARK: UITableViewDataSource Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.notifications.count 
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NotificationsTableViewCell", for: indexPath) as! NotificationsTableViewCell
        cell.setUpUI(notification: viewModel.notifications[indexPath.row])
        return cell
    }
    
    // MARK: UITableViewDelegate Methods
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel.setNotificationRead(index: indexPath.row)
        if viewModel.notifications[indexPath.row].isProfileNotification{
            goToProfileViewController()
        }
        tableView.reloadData()
    }
    
}
