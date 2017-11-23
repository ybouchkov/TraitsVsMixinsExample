# TraitsVsMixinsExample
Very Simple example of using protocols

**Login Screen with validation**
*Let's say you have a login screen that needs to validate the username and password to make sure they are well-formed — not too short, not too long, no invalid characters — before you actually send a web service request. This is a fairly common thing to do in iOS apps.*

**The idea**
The LoginViewController is not massive when we are checking fields. All that stuff is in the extension.
*So what’s the difference between a trait and a mixin?*
![alt text](http://machinethink.net/images/mixins-and-traits-in-swift-2/TraitsVsMixins.png)

A **trait** also has the actual method bodies. In other words, a trait adds code to an interface. This is the new thing that Swift 2.0 lets us do today with protocol extensions.

A **mixin** is like a trait but it also has state. We can’t really do this yet with Swift 2.0 as you’re not allowed to add stored properties to protocols.

*The orginial article*: <a href="http://bit.ly/2zd9EWB">machinethink</a>

