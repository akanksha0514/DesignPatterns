//
//  ProfileView.swift
//  DesignPatterns
//
//  Created by Akanksha Upadhyay on 22/01/23.
//

import Foundation
import UIKit

protocol ProfileView {
    var name: UILabel {get set}
    var profileImage: UIImage {get set}
    func setProfileDetails()
}
