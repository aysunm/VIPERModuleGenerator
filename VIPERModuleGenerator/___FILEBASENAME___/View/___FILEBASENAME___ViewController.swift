//
//  ___FILEBASENAME___ViewController.swift
//  PetalMaps
//
//  Created by admin on 10.02.2022.
//

import UIKit
import FloatingPanel

class ___FILEBASENAME___ViewController: UIViewController {
    
    // MARK: - View Elements

    
    // MARK: - Variables
    var presenter: ___FILEBASENAME___ViewToPresenterConformable!
    
    // MARK: - Main Lifecycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - UI Setup
    private func setupUI() {
        
    }
}

// MARK: - Tap Event Handlers
extension ___FILEBASENAME___ViewController {
    
    @IBAction func didTapCloseButton(_ sender: UIButton) {
        self.presenter.didTapClose()
    }
}

// MARK: - Storyboard
extension ___FILEBASENAME___ViewController: Storyboardable {}

// MARK: - Presenter To View Conformable
extension ___FILEBASENAME___ViewController: ___FILEBASENAME___PresenterToViewConformable {
    
}

// MARK: - Floating Panel Layout
class FloatingPanel___FILEBASENAME___Layout: FloatingPanelLayout {
    let position: FloatingPanelPosition = .bottom
    let initialState: FloatingPanelState = .full
    
    var anchors: [FloatingPanelState: FloatingPanelLayoutAnchoring] {
        return [
            .full: FloatingPanelLayoutAnchor(absoluteInset: 10, edge: .top, referenceGuide: .safeArea),
        ]
    }
    
    func backdropAlpha(for state: FloatingPanelState) -> CGFloat {
        return 0.3
    }
}

// MARK: - Floating Panel Behavior
class FloatingPanel___FILEBASENAME___Behavior: FloatingPanelBehavior {
    let springDecelerationRate: CGFloat = UIScrollView.DecelerationRate.fast.rawValue
    let springResponseTime: CGFloat = 0.25
}

// MARK: - Floating Panel Controller Delegate
extension ___FILEBASENAME___ViewController: FloatingPanelControllerDelegate {
    func floatingPanel(_ vc: FloatingPanelController, layoutFor newCollection: UITraitCollection) -> FloatingPanelLayout {
        return FloatingPanelBusStationsLayout()
    }
    
    func floatingPanelDidMove(_ vc: FloatingPanelController) {
        if vc.isAttracting == false {
            let loc = vc.surfaceLocation
            let minY = vc.surfaceLocation(for: .full).y
            let maxY = vc.surfaceLocation(for: .tip).y
            vc.surfaceLocation = CGPoint(x: loc.x, y: min(max(loc.y, minY), maxY))
        }
    }
    
    func floatingPanelShouldBeginDragging(_ fpc: FloatingPanelController) -> Bool {
        return false
    }
}
