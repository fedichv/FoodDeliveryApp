//
//  AppCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Владимир Федичев on 30.12.2024.
//
import UIKit

class AppCoordinator: Coordinator{
    
    private let userStorage = UserStorage.shared
    private let factory = SceneFactory.self

    override func start() {
        if userStorage.passedOnboarding {
            showMainFlow()
        } else {
            showOnboardingFlow()
        }
    }
    override func finish() {
        print("AppCoordinaror finish")
    }
}

// MARK: - Navigation methods
private extension AppCoordinator {
    func showOnboardingFlow() {
        guard let navigationController = navigationController else { return }
        factory.makeOnboardingFlow(coordinator: self, finishDelegate: self, navigationController: navigationController)
    }
    func showMainFlow() {
        guard let navigationController = navigationController else { return }
        let tabBarController = factory.makeMainFlow(coordinator: self, finishDelegate: self)
        navigationController.pushViewController(tabBarController, animated: true)
    }
}

extension AppCoordinator: CoordinatorFinishDelegate {
    func coordinatorDidFinish(childCoordinates: CoordinatorProtocol) {
        removeChildCoordinator(childCoordinates)
        
        switch childCoordinates.type {
        case .onboarding:
            navigationController?.viewControllers.removeAll()
            showMainFlow()
        case .app:
            return
        default:
            navigationController?.popToViewController(navigationController!.viewControllers.first!, animated: false)
        }
    }
}
