import Foundation

// Common definitions

#if DEFINE_EXTRA_MODULE_TYPES
#else
public final class CustomArray: NSArray {}
public final class CustomPolyline: NSObject {}
#endif

// iOS specific definitions

#if os(iOS)

import UIKit

public final class CreateAccViewController: UIViewController {}
public final class PickerViewController: UIViewController {}
public final class SlideLeftSegue: UIStoryboardSegue {}
public final class SlideUpSegue: UIStoryboardSegue {}

#if DEFINE_EXTRA_MODULE_TYPES
public final class SlideDownSegue: UIStoryboardSegue {}
public final class ValidatePasswordViewController: UIViewController {}
#elseif DEFINE_NAMESPACED_EXTRA_MODULE_TYPES
enum ExtraModule {
  public final class SlideDownSegue: UIStoryboardSegue {}
  public final class ValidatePasswordViewController: UIViewController {}
}
#endif

// macOS specific definitions

#elseif os(OSX)

import Cocoa

public final class CustomTabViewController: NSWindowController {}
public final class DetailsViewController: NSWindowController {}
public final class RotateSegue: NSStoryboardSegue {}
public final class ZoomSegue: NSStoryboardSegue {}

#if DEFINE_EXTRA_MODULE_TYPES
public final class SlideDownSegue: UIStoryboardSegue {}
public final class ValidatePasswordViewController: UIViewController {}
#elseif DEFINE_NAMESPACED_EXTRA_MODULE_TYPES
enum ExtraModule {
  public final class LoginSegue: NSStoryboardSegue {}
  public final class LoginViewController: NSWindowController {}
}
#endif

#endif
