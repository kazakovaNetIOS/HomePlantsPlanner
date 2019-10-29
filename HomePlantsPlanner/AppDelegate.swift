//
//  AppDelegate.swift
//  HomePlantsPlanner
//
//  Created by Natalia Kazakova on 26.10.2019.
//  Copyright © 2019 Natalia Kazakova. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    static var container: NSPersistentContainer!
    private var appCoordinator: Coordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        createContainer { (container) in
            let window = UIWindow(frame: UIScreen.main.bounds)
            let appCoordinator = AppCoordinator(window: window,
                                                plantsManager: PlantsManager(
                                                    context: container.newBackgroundContext()))
            self.window = window
            self.appCoordinator = appCoordinator
            
            appCoordinator.start()
        }
        return true
    }
}

//MARK: - Core Data stack
/***************************************************************/

extension AppDelegate {
    func createContainer(completion: @escaping (NSPersistentContainer) -> ()) {
        let container = NSPersistentContainer(name: "Model")
        container.loadPersistentStores { (_, error) in
            guard error == nil else {
                fatalError("Failed to load store")
            }
            DispatchQueue.main.async {
                completion(container)
            }
        }
    }
}
