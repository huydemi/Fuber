/**
 * Copyright (c) 2016 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import UIKit
import QuartzCore
import Commons

class TileView: UIView {
  
  static var chimesSplashImage: UIImage!
  static let rippleAnimationKeyTimes = [0, 0.61, 0.7, 0.887, 1]
  var shouldEnableRipple = false
  
  convenience init(TileFileName: String) {
    TileView.chimesSplashImage = UIImage(named: TileFileName, in: Bundle(identifier: "com.razeware.SplashScreenUI"), compatibleWith: nil)!
    self.init(frame: CGRect.zero)
    frame = CGRect(x: 0, y: 0, width: TileView.chimesSplashImage.size.width, height: TileView.chimesSplashImage.size.height)
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
//    layer.contents = TileView.chimesSplashImage.CGImage
    layer.shouldRasterize = true
    layer.borderWidth = 2.0
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func startAnimatingWithDuration(_ duration: TimeInterval, beginTime: TimeInterval,    rippleDelay: TimeInterval, rippleOffset: CGPoint) {
  }
  
  func stopAnimating() {
    layer.removeAllAnimations()
  }
}
