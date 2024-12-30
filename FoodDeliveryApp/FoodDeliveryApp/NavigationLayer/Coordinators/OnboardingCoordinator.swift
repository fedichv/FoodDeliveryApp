//
//  On.swift
//  FoodDeliveryApp
//
//  Created by Владимир Федичев on 30.12.2024.
//

import UIKit

class OnboardingCoordinator: Coordinator {
    
    override func start() {
        let vc = ViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    override func finish() {
        print("AppCoordinaror finish")
    }
}
