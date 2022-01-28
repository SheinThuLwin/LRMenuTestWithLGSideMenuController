//
//  SlideMenuController.swift
//  LRMenuTest
//
//  Created by ut-i02 on 28/01/2022.
//

import LGSideMenuController

class SlideMenuController: LGSideMenuController{
    public convenience init(rootVC: RootVC, leftMenuVC: LeftMenuVC, rightMenutVC: RightMenuVC, isNeedNavigationController: Bool = false){
        self.init()
        
        let rootVC = RootVC()
        let leftMenuVC = LeftMenuVC()
        let rightMenutVC = RightMenuVC()
        
        rootVC.slideMenuProtocol = self
        leftMenuVC.menuProtocol = rootVC
        rightMenutVC.menuProtocol = rootVC
        
        rootViewController = isNeedNavigationController ? UINavigationController(rootViewController: rootVC) : rootVC
        leftViewController = leftMenuVC
        rightViewController = rightMenutVC

        leftViewPresentationStyle = .slideAboveBlurred
        rightViewPresentationStyle = .slideBelowShifted

        leftViewWidth = 250.0
        rightViewWidth = 100.0
    }
}

extension SlideMenuController: RootVCProtocol{
    func showMenuLeft() {
        showLeftView()
    }
    
    func showMenuRight() {
        showRightView()
    }
    
    
}
