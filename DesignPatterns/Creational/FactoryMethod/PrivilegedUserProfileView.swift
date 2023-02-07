//
//  PrivilegedUserProfileView.swift
//  DesignPatterns
//
//  Created by Akanksha Upadhyay on 22/01/23.
//

import Foundation
import UIKit

class PrivilegedUserProfileView: ProfileView {
    var name: UILabel = UILabel()
    
    var profileImage: UIImage = UIImage()
    
    func setProfileDetails() {
        print("Type of profile is privileged")
    }
    
}
