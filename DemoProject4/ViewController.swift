//
//  ViewController.swift
//  DemoProject4
//
//  Created by Revonomics on 20/10/18.
//  Copyright © 2018 Revonomics. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let presenter: MainViewPresenter!
    var mainView: MainView { return self.view as! MainView }
    
    init(with presenter: MainViewPresenter) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.likeAction = { [weak self] in self?.likeAction() }
    }
    
    private func likeAction() {
        presenter.updateLike()
        
        UIView.animate(withDuration: 0.5, animations: {
            self.mainView.likeButton.setTitle(self.presenter.likeButtonTitle, for: .normal)
            self.mainView.contentView.backgroundColor = self.presenter.viewColor
        })
    }
    
    override func loadView() {
        self.view = MainView(frame: UIScreen.main.bounds)
    }
}
