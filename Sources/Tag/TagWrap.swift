
public final class TagWrap<Value>: Tagged {

	public let tags: [Tag]
	public let value: Value

	public init(value: Value, tags: [Tag]) {
		self.value = value
		self.tags = tags
	}
}
