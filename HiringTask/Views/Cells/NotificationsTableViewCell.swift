//
//  NotificationsTableViewCell.swift
//  HiringTask
//
//  Created by Fernando Garay on 10/08/2021.
//

import UIKit

class NotificationsTableViewCell: UITableViewCell {

    @IBOutlet weak var readIconView: UIView!
    @IBOutlet weak var notificationTitleLabel: UILabel!
    @IBOutlet weak var profileImageImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        readIconView.layer.cornerRadius = readIconView.frame.size.width/2
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setUpUI(notification: Notification){
        setUpTitle(notification: notification)
        switch notification.imageType {
        case .circle:
            profileImageImageView.layer.cornerRadius = readIconView.frame.size.width/2
        case .square:
            profileImageImageView.layer.cornerRadius = 4
        }
        profileImageImageView.image = notification.image
        readIconView.isHidden = notification.read
}
    
    func setUpTitle(notification: Notification){
        let boldFont = UIFont(name: "OpenSans-Bold", size: 15.0)!
        let titleText = NSMutableAttributedString()
        var isBold = false
        for string in notification.title.wordList {
            isBold = false
            for boldText in notification.boldText {
                if boldText == string {
                    isBold = true
                    let boldString : NSAttributedString = NSAttributedString(string: boldText + " ", attributes: [.font: boldFont])
                    titleText.append(boldString)
                }
            }
            if !isBold {
                let regularString : NSAttributedString = NSAttributedString(string: string + " ")
                titleText.append(regularString)
            }
        }
        notificationTitleLabel.attributedText = titleText
    }
}

extension String {
    var wordList: [String] {
        return components(separatedBy: CharacterSet.alphanumerics.inverted).filter { !$0.isEmpty }
    }
}
