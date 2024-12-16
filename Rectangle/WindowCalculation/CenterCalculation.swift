//
//  CenterCalculation.swift
//  Rectangle, Ported from Spectacle
//
//  Created by Ryan Hanson on 6/14/19.
//  Copyright © 2019 Ryan Hanson. All rights reserved.
//

import Foundation

class CenterCalculation: WindowCalculation {
    
    override func calculateRect(_ params: RectCalculationParameters) -> RectResult {

        let visibleFrameOfScreen = params.visibleFrameOfScreen
        var rect = visibleFrameOfScreen
        rect.size.width = floor(visibleFrameOfScreen.width * 0.8)
        rect.size.height = floor(visibleFrameOfScreen.height * 0.66)
        rect.origin.x = floor((visibleFrameOfScreen.width - rect.size.width) / 2.0) + visibleFrameOfScreen.minX
        rect.origin.y = floor((visibleFrameOfScreen.height - rect.size.height) / 2.0) + visibleFrameOfScreen.minY
        return RectResult(rect)
    }
    
}
