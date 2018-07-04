//: [Previous](@previous)

import UIKit
import PlaygroundSupport
import TinyConstraints

//:# Aligning Views
//: First we set up our ViewController and the UIViews that we want to add the constraints to.

let backgroundView = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
backgroundView.backgroundColor = TinyTheme.backgroundColor
PlaygroundPage.current.liveView = backgroundView

let firstView = UIView()
firstView.backgroundColor = TinyTheme.otherViewColor

let secondView = UIView()
secondView.backgroundColor = TinyTheme.constraintViewColor

backgroundView.addSubview(firstView)
backgroundView.addSubview(secondView)

firstView.size(CGSize(width: 50, height: 100))
secondView.size(CGSize(width: 50, height: 100))

//: Now we can align the left side of the secondView to the right size of the firstView like this:

secondView.leftToRight(of: firstView, offset: 10)
