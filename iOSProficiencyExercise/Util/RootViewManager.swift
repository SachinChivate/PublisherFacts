//
//  RootViewManager.swift
//  iOSProficiencyExercise
//
//  Created by Nischal Hada on 5/26/18.
//  Copyright © 2018 NischalHada. All rights reserved.
//

import Foundation
import UIKit

protocol ViewManagers{
    func rootView() -> UIViewController
}

class RootViewManager {}

extension RootViewManager: ViewManagers {
    func rootView() -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let loginView: ViewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        let navigationController = UINavigationController(rootViewController: loginView)
        let controller = navigationController
        return controller
    }
}

