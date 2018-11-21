
extension Tag {

    internal var name: String? {
        switch self {
        case .wildcard: return nil
        case .custom(let name): return name
        }
    }
}

extension Taggable {

    public var tagNames: String? {
        return tags.isEmpty ? nil : tags.names.joined(separator: Tag.separator)
    }
}

extension Array where Element == Tag {

    public func match<Value: Tagged>(_ tagged: [Value]) -> [Value] {
        return reduce([]) { result, tag in
            result + tagged.filter { $0.isTagged(with: tag) }
        }
    }

    public var names: [String] {
        return compactMap { $0.name }
    }
}
