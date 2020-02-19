// This file was generated with Diez - https://diez.org
// Do not edit this file directly.

import Foundation
import CoreGraphics
@objc(DEZColor)
public final class Color: NSObject, Decodable {
    /**
     * Provides simple hue-saturation-lightness-alpha color data.
     *
     * 0.16666666666666666
     */
    @objc public internal(set) var h: CGFloat
    /**
     * Provides simple hue-saturation-lightness-alpha color data.
     *
     * 1
     */
    @objc public internal(set) var s: CGFloat
    /**
     * Provides simple hue-saturation-lightness-alpha color data.
     *
     * 0.5
     */
    @objc public internal(set) var l: CGFloat
    /**
     * Provides simple hue-saturation-lightness-alpha color data.
     *
     * 1
     */
    @objc public internal(set) var a: CGFloat

    init(
        h: CGFloat,
        s: CGFloat,
        l: CGFloat,
        a: CGFloat
    ) {
        self.h = h
        self.s = s
        self.l = l
        self.a = a
    }
}

extension Color: ReflectedCustomStringConvertible {
    public override var description: String {
        return reflectedDescription
    }
}
