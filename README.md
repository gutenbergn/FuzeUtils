# FuzeUtils
This repository is meant to store several helper classes and extensions that are used in Fuze's personal projects

In many cases, the files contain code that has been taken from several sources, like Stack Overflow, and modified by us so as to be more easily embedded in our apps. We did our best to reference the original source whenever appropriate, but if we missed something please feel free to leave a note.

## Available files
* **CALayer+Animation**
Adds an `addFadeAnimation` to implement a fade behavior in a `CALayer`. This can be used, for instance, for changing the text of an `UILabel` with a fade animation. 

* **DisplayHelper**
This is a helper class for dealing with various screen-related matters ranging from getting the width or height of the screen to identifying the current device.

* **NSAttributedString+CustomLineSpacing**
Allows for an `NSAttributedString` to be created with a custom line spacing.

* **NSAttributedString+Range**
Makes the `range` method of the `NSMutableAttributedString` available to an `NSAttributedString`.

* **NSObject+RemoveObservers**
Easily remove all observers from an object.

* **NSString+StripCurrency**
To be used with currncy strings to get only the actual amount. 

* **String+FirstLetterCapitalization**
Capitalizes *only* the first letter of a given string.

* **String+SizeWithFont**
Returns the size of a string based on its font and a given constraint. 

* **String+Subscript**
Adds subscript operator to regular strings.

* **String+Validation**
Adds 2 validation methods: `isEmpty` for checking if a string is empty or not (this is more complete than the default String property because it can also optionally trim the string before checking), and `isValidEmail` for detecting whether the given string contains a valid email or not.

* **String+Version**
Returns a string containing the app's version in an easy format for user display.

* **UIButton+Fade**
Allows the button title to be updated with a fade animation.

* **UIColor+Brightness**
Based on a given color, can return it darkened or lightened by a specified multiplier.

* **UIImage+Color**
This extension implements a static method to return an image from a given color and a method to tint an image.

* **UIImageView+Crossfade**
Crossfades a new image into the `UIImageView`.

* **UINavigationController+TopBarHeight**
Returns the top bar height including the status bar.

* **UIPageViewController+ScrollView**
Adds access to the underlying scroll view of an `UIPageViewController`.

* **UISearchBar+Subviews**
Adds access to the cancel button and text field of `UISearchBar`.

* **UITableViewCell+TableView**
Returns the container table view in which the `UITableViewCell` is included.

* **UIView+LoadFromNib**
Loads an `UIView` from a specified nib file.

* **UIView+ParentViewController**
Returns the container view controller in which the `UIView` is included.

* **UIView+RoundCorners**
Adds rounded corners to an `UIView`.

* **UIView+Underline**
Adds an underline to an `UIView.

* **UIView+ViewDisplay**
Animates the display or hiding of the `UIView` by fading its alpha.

* **UIViewController+ChildViewController**
Allows for a child view controller to be added with layout constraints automatically inserted (a helper `UIView` extension is included to handle that) and for a view controller to be presented with a fade animation. 

* **UIViewController+PreloadView**
Preloads a view controller's view before it's actually displayed.

* **UIViewController+StatusBarWindowLevel**
Brings the screen to front by changing the status bar window level.

* **UIViewController+UserActivity**
Easily registers the user activity for TV App support.

## Requirements
iOS 9.0+  
Xcode 8.0+  
Swift 4.0+  
CocoaPods 1.1.0+

## License
`VimeoPlayer` is available under the MIT license. See the [LICENSE](LICENSE) file for more info.
