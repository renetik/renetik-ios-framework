//
// Created by Rene Dohan on 1/25/20.
//

import UIKit

public extension UIControl {

    @discardableResult
    @objc override func onClick(_ block: @escaping Func) -> Self {
        onTouchUp(block)
    }

    @discardableResult
    @objc func onTouchUp(_ block: @escaping Func) -> Self {
        interaction(enabled: true)
        addEventHandler(controlEvents: .touchUpInside) { block() }
        return self
    }

    @discardableResult
    @objc func onTouchDown(_ block: @escaping Func) -> Self {
        interaction(enabled: true)
        addEventHandler(controlEvents: .touchDown) { block() }
        return self
    }

    func touchUp() { sendActions(for: .touchUpInside) }

    func touchDown() { sendActions(for: .touchDown) }
}