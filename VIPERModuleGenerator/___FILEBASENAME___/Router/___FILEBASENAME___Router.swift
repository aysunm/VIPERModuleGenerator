//
//  ___FILEBASENAME___Router.swift
//  PetalMaps
//
//  Created by admin on 10.02.2022.
//

class ___FILEBASENAME___Router: ___FILEBASENAME___PresenterToRouterConformable {
    
    weak var viewController: ___FILEBASENAME___ViewController?
    
    func didTapClose() {
        
    }
}

extension ___FILEBASENAME___Router {
    
    static func createModule() -> ___FILEBASENAME___ViewController {
//        if ___FILEBASENAME___Router.shared.viewController == nil {
            let router = ___FILEBASENAME___Router()
            let interactor = ___FILEBASENAME___Interactor()
            let presenter = ___FILEBASENAME___Presenter(interactor: interactor, router: router)
            let view = ___FILEBASENAME___ViewController.initializeFromStoryboard()
            
            presenter.view = view
            view.presenter = presenter
            interactor.presenter = presenter
            router.viewController = view
//        }
        
        return view
    }
}
