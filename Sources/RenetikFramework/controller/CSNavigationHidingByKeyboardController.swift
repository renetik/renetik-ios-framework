//
//  Renetik
//
//  Created by Rene Dohan on 7/9/19.
//

import UIKit

public class CSNavigationHidingByKeyboardController: CSViewController {

    private var navigationBarHidden = false
    private let keyboardManager = CSKeyboardObserverController()

    @discardableResult
    public override func construct(_ parent: UIViewController) -> Self {
        super.construct(parent).asViewLess()
        keyboardManager.construct(self, onKeyboardChange)
        return self
    }

    private func onKeyboardChange(keyboardHeight: CGFloat) {
        if keyboardHeight > 0 { hideNavigationBar() }
        else { showNavigationBar() }
    }

    public func hideNavigationBar() {
        if navigationBarHidden { return }
        animate(duration: 0.5) {
            Renetik.navigation!.navigationBar.bottom = Renetik.delegate.window??.statusBarHeight ?? 0
            Renetik.navigation!.last!.view.fill(top: Renetik.navigation!.navigationBar.bottom)
        }
        Renetik.navigation?.navigationBar.fadeOut(duration: 0.7)
        navigationBarHidden = true
    }

    public func showNavigationBar() {
        if !navigationBarHidden { return }
        animate(duration: 0.5) {
            Renetik.navigation!.navigationBar.top = Renetik.delegate.window??.statusBarHeight ?? 0
//            navigation.navigationBar.top = UIApplication.shared.statusBarFrame.height
            Renetik.navigation!.last!.view.fill(top: Renetik.navigation!.navigationBar.bottom)
        }
        Renetik.navigation!.navigationBar.fadeIn(duration: 0.7)
        navigationBarHidden = false
    }
}
