//
//  ___FILEBASENAME___Protocols.swift
//  PetalMaps
//
//  Created by admin on 10.02.2022.
//

import Foundation

// MARK: - View <--> Presenter
protocol ___FILEBASENAME___ViewToPresenterConformable: AnyObject {
    var view: ___FILEBASENAME___PresenterToViewConformable? { get set }
    var router: ___FILEBASENAME___PresenterToRouterConformable { get set }
    var interactor: ___FILEBASENAME___PresenterToInteractorConformable { get set }
    
    func didTapClose()
}

protocol ___FILEBASENAME___PresenterToViewConformable: AnyObject {

}

// MARK: - Presenter <--> Interactor
protocol ___FILEBASENAME___PresenterToInteractorConformable: AnyObject {
    var presenter: ___FILEBASENAME___InteractorToPresenterConformable? { get set }
}

protocol ___FILEBASENAME___InteractorToPresenterConformable: AnyObject {
    
}

// MARK: - Presenter --> Router
protocol ___FILEBASENAME___PresenterToRouterConformable: AnyObject {
    func didTapClose()
}

// MARK: - Worker
protocol ___FILEBASENAME___WorkerConformable: AnyObject {
    
}
