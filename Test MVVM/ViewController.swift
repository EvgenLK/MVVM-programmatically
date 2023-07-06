//
//  ViewController.swift
//  Test MVVM
//
//  Created by Evgenii Kutasov on 04.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var nameLabel: UILabel = {
        let nameLabel = UILabel(frame: CGRect(x: 100, y: 100, width: 50, height: 50))
        nameLabel.font = UIFont(name: "Arial", size: 20)
        nameLabel.textColor = UIColor.black
        nameLabel.text = "one"
        return nameLabel
    }()
    
    var secondLabel: UILabel = {
        let secondLabel = UILabel(frame: CGRect(x: 100, y: 300, width: 50, height: 50))
        secondLabel.font = UIFont(name: "Arial", size: 20)
        secondLabel.textColor = UIColor.black
        secondLabel.text = "two"
        return secondLabel
    }()
    
    var age: UILabel = {
        let age = UILabel(frame: CGRect(x: 100, y: 500, width: 50, height: 50))
        age.font = UIFont(name: "Arial", size: 20)
        age.textColor = UIColor.black
        age.text = "age"
        return age
    }()
    
    var viewModel: ViewModel! {
        didSet {
            self.nameLabel.text = viewModel.name
            self.secondLabel.text = viewModel.secondName
            self.age.text = "\(viewModel.age)"
        }
    }
    
//    var profile: Profile? {
//        didSet {
//            guard let profile = profile else { return }
//
//            self.nameLabel.text = profile.name
//            self.secondLabel.text = profile.seconfName
//            self.age.text = "\(profile.age)"
//        }
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = ViewModel()

        view.backgroundColor = .white
        view.addSubview(nameLabel)
        view.addSubview(secondLabel)
        view.addSubview(age)
        
    }
}

