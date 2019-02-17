//
//  Color.swift
//  Slider
//
//  Created by Matt Deuschle on 2/17/19.
//  Copyright © 2019 Matt Deuschle. All rights reserved.
//

import UIKit
import ChameleonFramework

struct Color {
    static let standard = Color()
    private init() {}
    var colors: [UIColor] {
        return [
            UIColor(hexString: "be333e") ?? .white,
            UIColor(hexString: "cc3744") ?? .white,
            UIColor(hexString: "e43e43") ?? .white,
            UIColor(hexString: "e84f44") ?? .white,
            UIColor(hexString: "ed724a") ?? .white,
            UIColor(hexString: "f08c4d") ?? .white,
            UIColor(hexString: "f4a946") ?? .white,
            UIColor(hexString: "f7c047") ?? .white,
            UIColor(hexString: "61be58") ?? .white,
            UIColor(hexString: "5ebd87") ?? .white
        ]
    }
}
