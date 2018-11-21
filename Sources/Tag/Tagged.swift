
public protocol Tagged: class {

    var tags: [Tag] { get }
}

extension Tagged {

    public func isTagged(with tag: Tag) -> Bool {
        if tag == .wildcard {
            return tags.count == 0
        } else {
            return tags.contains(tag)
        }
    }
}
