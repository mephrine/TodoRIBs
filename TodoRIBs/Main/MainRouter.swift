//
//  MainRouter.swift
//  TodoRIBs
//
//  Created by Mephrine on 2021/06/22.
//

import RIBs

protocol MainInteractable: Interactable {
    var router: MainRouting? { get set }
    var listener: MainListener? { get set }
}

protocol MainViewControllable: ViewControllable {
    // TODO: Declare methods the router invokes to manipulate the view hierarchy.
}

final class MainRouter: ViewableRouter<MainInteractable, MainViewControllable>, MainRouting {

    // TODO: Constructor inject child builder protocols to allow building children.
    override init(interactor: MainInteractable, viewController: MainViewControllable) {
        super.init(interactor: interactor, viewController: viewController)
        interactor.router = self
    }
}
