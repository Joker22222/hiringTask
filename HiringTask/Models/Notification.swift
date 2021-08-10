//
//  Notification.swift
//  HiringTask
//
//  Created by Fernando Garay on 10/08/2021.
//

import Foundation
import UIKit

enum ImageType {
    case circle
    case square
}

struct Notification {
    var title: String
    var image: UIImage
    var read: Bool
    var boldText: [String]
    var isProfileNotification: Bool
    var imageType: ImageType
}
