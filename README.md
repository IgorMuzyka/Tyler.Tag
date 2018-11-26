# Tag

This repo provides a functionality to **tag** content or mark types as **Tagged** or **Taggable** for the [Tyler](https://github.com/IgorMuzyka/Tyler) famework.

Tag:

```swift
public enum Tag: Equatable {

    case wildcard
    case custom(String)
}
```

Tagged:

```swift
public protocol Tagged: class {

    var tags: [Tag] { get }
}
```

Taggable:

```swift
public protocol Taggable: Tagged {

    var tags: [Tag] { get set }
}
```

