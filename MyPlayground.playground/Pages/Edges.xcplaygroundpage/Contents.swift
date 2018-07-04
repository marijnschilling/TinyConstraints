import UIKit
import PlaygroundSupport
import TinyConstraints
/*: Edges

 First we set up our backgroundView and the view that we want to add the constraints to. */

let backgroundView = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
backgroundView.backgroundColor = TinyTheme.backgroundColor
PlaygroundPage.current.liveView = backgroundView

let edgesView = UIView()
edgesView.backgroundColor = TinyTheme.constraintViewColor
backgroundView.addSubview(edgesView)

/*:
 Attaching a view to its superview with NSLayoutConstraint:

 view.topAnchor.constraint(equalTo: superview.topAnchor, constant: 0).isActive = true
 view.leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: 0).isActive = true
 view.bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: 0).isActive = true
 view.trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: 0).isActive = true
 And doing it with tinyConstraints: */
//edgesView.edges(to: containerView)

//: you can also attach the view with insets, if you comment the line above and uncomment this line you can play with the values and see what happens:
edgesView.edges(to: backgroundView, insets: UIEdgeInsets(top: 100, left: 50, bottom: -20, right: 0))
