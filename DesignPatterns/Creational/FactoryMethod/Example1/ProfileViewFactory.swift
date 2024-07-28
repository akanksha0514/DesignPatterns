//
//  ProfileViewFactory.swift
//  DesignPatterns
//
//  Created by Akanksha Upadhyay on 22/01/23.
//

import Foundation

enum ProfileType {
    case standard
    case privileged
}

class ProfileViewFactory {
    func getProfileView(profileType: ProfileType) -> ProfileView? {
        switch (profileType) {
            case .standard: return StandardUserProfileView()
            case .privileged: return PrivilegedUserProfileView()
        }
    }
}
