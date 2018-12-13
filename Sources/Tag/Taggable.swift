
public protocol Taggable: Tagged {

    var tags: [Tag] { get set }
}

extension Taggable {

    @discardableResult
    public func tag(_ tag: Tag) -> Self {
        precondition(tag != .wildcard, "\(Tag.wildcard) Tag exists only as an abstract placeholder for cases where we do not care about tag, thus can not be applied to object")

        tags.append(tag)
        return self
    }

    @discardableResult
    public func tag(_ tags: Tag...) -> Self {
        return tags.reduce(self, { (taggable, tag) in
            taggable.tag(tag)
        })
    }
}
