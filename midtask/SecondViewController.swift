//
//  SecondViewController.swift
//  midtask
//
//  Created by Нурлан Разак on 10/19/19.
//  Copyright © 2019 develops. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    let secondLabel: UILabel = {
        let clabel = UILabel()
        clabel.numberOfLines = 0
        clabel.lineBreakMode = .byWordWrapping
        clabel.text = "You have finished! My congrats!"
        clabel.font = clabel.font.withSize(12)
        clabel.layer.cornerRadius = 30
        clabel.layer.masksToBounds = true
        clabel.textAlignment = .center
        clabel.backgroundColor = UIColor(red: 0.77, green: 0.77, blue: 0.77, alpha: 1.0)
    
        return clabel
    }()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        setupViews()
        setupConstraints()
        
    }
    
    private func setupViews() {
        [secondLabel].forEach {
            self.view.addSubview($0)
        }
    }
    
    private func setupConstraints() {
        secondLabel.anchor(top:self.view.topAnchor, leading:self.view.leadingAnchor, bottom:nil, trailing: nil, padding:.init(top:278, left:59, bottom:279, right:49), size: .init(width:267, height:110))
        
    }
    
}
