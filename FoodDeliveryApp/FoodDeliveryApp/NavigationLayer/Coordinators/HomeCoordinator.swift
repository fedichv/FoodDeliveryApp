//
//  Untitled.swift
//  FoodDeliveryApp
//
//  Created by Владимир Федичев on 30.12.2024.
//

import UIKit

class HomeCoordinator: Coordinator {
    
    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .red
        navigationController?.pushViewController(vc, animated: true)
    }
    override func finish() {
        print("AppCoordinaror finish")
    }
}

