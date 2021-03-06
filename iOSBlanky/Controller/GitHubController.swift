//
//  GitHubController.swift
//  iOSBlanky
//
//  Created by Levi Bostian on 5/4/16.
//  Copyright © 2016 Curiosity IO. All rights reserved.
//

import Foundation

class GitHubController: BaseController {
    
    private static var instance: GitHubController?
    
    internal static func getInstance() -> GitHubController {
        if instance == nil {
            instance = GitHubController()
        }
        
        return instance!
    }
    
    func getUserRepos(gitHubUsername: String, onError: @escaping (_ message: String) -> Void, onComplete: @escaping (_ data: [RepoModel]?) -> Void) {
        GitHubAPI.getUserRepos(gitHubUsername: gitHubUsername, onError: onError, onComplete: onComplete)
    }
    
}
