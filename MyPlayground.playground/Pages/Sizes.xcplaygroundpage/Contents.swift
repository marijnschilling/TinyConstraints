import UIKit
import PlaygroundSupport
import TinyConstraints
//:# Sizes
//: First we set up our background view and the view that we want to add the constraints to.
let backgroundView = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
PlaygroundPage.current.liveView = backgroundView
let constraintView = UIView()
backgroundView.backgroundColor = TinyTheme.backgroundColor
constraintView.backgroundColor = TinyTheme.constraintViewColor
/*:
> Always remember to add the view as a subview before you add constraints, otherwise your app will crash 💥
*/
backgroundView.addSubview(constraintView)
/*:
Setting width and height with NSLayoutConstraint:

    `constraintView.heightAnchor.constraint(equalToConstant: 100).isActive = true`

    `constraintView.widthAnchor.constraint(equalToConstant: 100).isActive = true`

with TinyConstraints:
*/
constraintView.height(100)
constraintView.width(100)
//: or even shorter, both at once:
constraintView.size(CGSize(width: 100, height: 100))
//: [Edges](@next)
