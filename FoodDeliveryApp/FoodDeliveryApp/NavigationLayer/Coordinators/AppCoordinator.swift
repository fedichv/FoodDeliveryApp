//
//  AppCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Владимир Федичев on 30.12.2024.
//
import UIKit

class AppCoordinator: Coordinator{

    override func start() {
        showOnboardingFlow()
    }
    override func finish() {
        print("AppCoordinaror finish")
    }
}

// MARK: - Navigation methods
private extension AppCoordinator {
    func showOnboardingFlow() {
        guard let navigationController = navigationController else { return }
        let onboardingCoordinator = OnboardingCoordinator( type: .onboarding ,navigationController: navigationController, finishDelegate: self)
        addChildCoordinator(onboardingCoordinator)
        onboardingCoordinator.start()
        
    }
    func showMainFlow() {
        
    }
}

extension AppCoordinator: CoordinatorFinishDelegate {
    func coordinatorDidFinish(childCoordinates: CoordinatorProtocol) {
        removeChildCoordinator(childCoordinates)
        
        switch childCoordinates.type {
        case .app:
            return
        default:
            navigationController?.popToViewController(navigationController!.viewControllers.first!, animated: false)
        }
    }
}
