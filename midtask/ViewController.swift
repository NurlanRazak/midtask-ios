//
//  ViewController.swift
//  midtask
//
//  Created by Нурлан Разак on 10/19/19.
//  Copyright © 2019 develops. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let greenView: UIView = {
        let gView = UIView()
        gView.backgroundColor = .green
        return gView
    }()
    
    let redView: UIView = {
       let rView = UIView()
       rView.backgroundColor = .red
        return rView
    }()
    
    let blackButton: UIButton = {
        let myButton = UIButton()
        myButton.backgroundColor = .black
        myButton.setTitle("Перейти на другой экран", for: .normal)
        myButton.setTitleColor(.white, for: .normal)
        myButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        return myButton
    }()
    
    let bottomText: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.text = "Алма-Ата – крупнейший мегаполис Казахстана, расположенный в предгорьях Заилийского Алатау. До 1997 года он был столицей государства и до сих пор остается торговым и культурным центром. Одна из главных достопримечательностей города – Центральный Государственный музей, где представлены тысячи экспонатов, связанных с историей страны. В центре города находится парк имени 28 гвардейцев-панфиловцев. На его территории возвышается ярко-желтая православная церковь – Вознесенский кафедральный собор царских времен."
        label.sizeToFit()
        label.font = label.font.withSize(12)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        setupViews()
        setupConstraints()
    }

    private func setupViews() {
        [greenView, redView, blackButton, bottomText].forEach {
            self.view.addSubview($0)
        }
    }
    
    private func setupConstraints() {
        greenView.anchor(top:self.view.topAnchor, leading:self.view.leadingAnchor,
                         bottom:nil, trailing: nil, padding:.init(top: 172, left: 35, bottom: 0, right: 0), size: .init(width: 137, height: 109))
        redView.anchor(top: self.greenView.topAnchor, leading:
                        self.greenView.trailingAnchor, bottom: nil, trailing: self.view.trailingAnchor,
                                                       padding: .init(top: 0, left: 31, bottom: 0, right: 35), size: .init(width: 137, height: 109))
        blackButton.anchor(top: self.greenView.bottomAnchor, leading:self.view.leadingAnchor, bottom: nil, trailing: self.view.trailingAnchor, padding: .init(top:21, left: 35, bottom:0, right: 35), size: .init(width: 305, height: 109))
        bottomText.anchor(top:self.blackButton.bottomAnchor, leading:self.view.leadingAnchor, bottom: nil, trailing: self.view.trailingAnchor, padding: .init(top: 36, left: 35, bottom:51, right:35), size: .init(width: 305, height: 169))
    }
    
    @objc private func buttonPressed() {
        print("test")
        self.show(SecondViewController(), sender: self)
    }
}

