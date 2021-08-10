//
//  ProfileViewController.swift
//  HiringTask
//
//  Created by Fernando Garay on 10/08/2021.
//

import UIKit

class ProfileViewController: UIViewController {
    // MARK: Lifeclycle Methods
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var profileImageImageView: UIImageView!
    @IBOutlet weak var videoLabel: UILabel!
    @IBOutlet weak var followersLabel: UILabel!
    @IBOutlet weak var followingLabel: UILabel!
    private var viewModel: ProfileViewModel = ProfileViewModel()
    
    // MARK: Lifeclycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.loadData()
        setUpUI()
    }
    
    // MARK: IBActions
    
    @IBAction func tapBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    // MARK: Class Methods
    
    func setUpUI(){
        profileImageImageView.layer.cornerRadius = profileImageImageView.frame.size.width/2
        if let profile = viewModel.profile{
            nameLabel.text = profile.name
            profileImageImageView.image = profile.image
            followersLabel.text = String(profile.followers) + " Followers"
            followingLabel.text = String(profile.following) + " Following"
            videoLabel.text = String(profile.videos) + " Videos"
        }
    }
}

extension ProfileViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    // MARK: CollectionViewDataSource Methods
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.profile?.videos ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: "defaultCell", for: indexPath)
    }
}
