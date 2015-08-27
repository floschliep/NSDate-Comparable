NSDate+Comparable
============================

`NSDate+Comparable` extends Foundation's `NSDate` class by Swift’s `Comparable` protocol.

The protocol implementation allows you to use the `==`, `!=`, `<`, `>`, `<=` and `>=` operators for date comparisons, which results in much more readable code.

## Usage

```
let past = NSDate().dateByAddingTimeInterval(-3600)
let now = NSDate()
let future = NSDate().dateByAddingTimeInterval(3600)

if past < now {
    // NSOrderedAscending
}
if future > now {
    // NSOrderedDescending
}
if now <= NSDate() {
    // NSOrderedAscending or NSOrderedSame
}
```

## Tests

The `NSDate+Comparable` Xcode Project includes a test target which uses `XCTest` to test the basic functions of the protocol implementation.

## Installation

Just add the `NSDate+Comparable.swift` file to your Swift project.

## Contact

Florian Schliep

- http://github.com/floschliep
- http://twitter.com/floschliep
- http://floschliep.com

## License

NSDate+Comparable is available under the MIT license. See the LICENSE.txt file for more info.
