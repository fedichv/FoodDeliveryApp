//
//  ListCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Владимир Федичев on 30.12.2024.
//

import UIKit

class ListCoordinator: Coordinator {
    
    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .green
        navigationController?.pushViewController(vc, animated: true)
    }
    override func finish() {
        print("AppCoordinaror finish")
    }
}
