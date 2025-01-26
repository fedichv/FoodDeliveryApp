//
//  On.swift
//  FoodDeliveryApp
//
//  Created by Владимир Федичев on 30.12.2024.
//

import UIKit

// MARK: -OnboardingCoordinator
class OnboardingCoordinator: Coordinator {
    
    // MARK: - Propeerties
    private let factory = SceneFactory.self
    
    // MARK: - Methods
    override func start() {
        showOnboarding()
    }
    override func finish() {
        print("AppCoordinaror finish")
        finishDelegate?.coordinatorDidFinish(childCoordinates: self)
    }
}

// MARK: - Navigation
private extension OnboardingCoordinator {
    func showOnboarding() {
        let viewController = factory.makeOnboardingScene(coordinator: self)
        navigationController?.pushViewController(viewController, animated: true)
        
    }
}
