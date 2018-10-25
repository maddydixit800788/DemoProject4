//
//  MainViewPresenter.swift
//  DemoProject4
//
//  Created by Revonomics on 25/10/18.
//  Copyright © 2018 Revonomics. All rights reserved.
//

import Foundation
import UIKit

class MainViewPresenter {
    private var model = MainModel(liked: false)
    var likeButtonTitle: String {
        return model.liked ? "Dislike" : "Like"
    }
    var viewColor: UIColor {
        return model.liked ? UIColor.red.withAlphaComponent(0.5) : .clear
    }
    
    func updateLike() {
        model.liked = !model.liked
    }
}

struct MainModel {
    var liked: Bool
}

