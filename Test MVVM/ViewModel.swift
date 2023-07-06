//
//  ViewModel.swift
//  Test MVVM
//
//  Created by Evgenii Kutasov on 04.07.2023.
//

import Foundation


class ViewModel {
     
    private var profile = Profile(name: "Jonh", seconfName: "Wick", age: 40)
    
    var name: String {
        return profile.name
    }
    
    var secondName: String {
        return profile.seconfName
    }
    
    var age: String {
        return String(describing: profile.age)
    }
}
