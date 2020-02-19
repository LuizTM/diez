// This file was generated with Diez - https://diez.org
// Do not edit this file directly.

import Foundation
import CoreGraphics
@objc(DEZPanel)
public final class Panel: NSObject, Decodable {
    /**
     * Panel data.
     *
     * 5
     */
    @objc public internal(set) var cornerRadius: CGFloat
    /**
     * Panel data.
     *
     * - color: `hsla(0.67, 1, 0.5, 1)`
     * - linearGradient: `start [0, 0], end [1, 1], stops: [hsla(0, 0, 0, 1) at 0,hsla(0, 0, 1, 1) at 1]`
     * - type: `Color`
     */
    @objc public internal(set) var background: Fill
    /**
     * Panel data.
     *
     * - offset: `[2, 3]`
     * - radius: `4`
     * - color: `hsla(0, 1, 0.5, 1)`
     */
    @objc public internal(set) var dropShadow: DropShadow

    init(
        cornerRadius: CGFloat,
        background: Fill,
        dropShadow: DropShadow
    ) {
        self.cornerRadius = cornerRadius
        self.background = background
        self.dropShadow = dropShadow
    }
}

extension Panel: ReflectedCustomStringConvertible {
    public override var description: String {
        return reflectedDescription
    }
}
