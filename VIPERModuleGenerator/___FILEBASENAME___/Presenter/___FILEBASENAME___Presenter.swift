//
//  ___FILEBASENAME___Presenter.swift
//  PetalMaps
//
//  Created by admin on 10.02.2022.
//

import Foundation

class ___FILEBASENAME___Presenter: ___FILEBASENAME___ViewToPresenterConformable {
    
    weak var view: ___FILEBASENAME___PresenterToViewConformable?
    var router: ___FILEBASENAME___PresenterToRouterConformable
    var interactor: ___FILEBASENAME___PresenterToInteractorConformable
    
    init(interactor: ___FILEBASENAME___PresenterToInteractorConformable, router: ___FILEBASENAME___PresenterToRouterConformable) {
        self.interactor = interactor
        self.router = router
    }
    
    func initialize() {
        interactor.initialize()
    }
    
    func didTapClose() {
        router.didTapClose(viewType: self.interactor.viewType)
    }
}

extension ___FILEBASENAME___Presenter: ___FILEBASENAME___InteractorToPresenterConformable {
    
}
