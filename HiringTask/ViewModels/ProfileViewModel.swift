//
//  ProfileViewModel.swift
//  HiringTask
//
//  Created by Fernando Garay on 10/08/2021.
//

import Foundation
import UIKit

class ProfileViewModel {
    var profile : Profile?
    func loadData () {
        profile = Profile(name: "Matias", image: UIImage(imageLiteralResourceName: "image2"), followers: 123, videos: 4, following: 45)
    }
}
