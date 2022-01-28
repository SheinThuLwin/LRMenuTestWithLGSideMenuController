//
//  AppStart.swift
//  LRMenuTest
//
//  Created by ut-i02 on 28/01/2022.
//

import UIKit
import LGSideMenuController

class AppStart{
    func start(window: UIWindow){
        slideMenuVC(window: window)
    }
    
    private func slideMenuVC(window: UIWindow){
        let slideMenuCtrl = SlideMenuController(rootVC: RootVC(),
                                                leftMenuVC: LeftMenuVC(),
                                                rightMenutVC: RightMenuVC(),
                                                isNeedNavigationController: true)
        window.rootViewController = slideMenuCtrl
        window.makeKeyAndVisible()
    }
}
