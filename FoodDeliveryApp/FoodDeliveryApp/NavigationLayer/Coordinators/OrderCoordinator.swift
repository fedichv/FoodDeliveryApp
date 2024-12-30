//
//  OrderCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Владимир Федичев on 30.12.2024.
//


import UIKit

class OrderCoordinator: Coordinator {
    
    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .yellow
        navigationController?.pushViewController(vc, animated: true)
    }
    override func finish() {
        print("AppCoordinaror finish")
    }
}
