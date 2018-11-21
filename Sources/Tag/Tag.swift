
import Foundation

public enum Tag: Equatable {

    case wildcard
    case custom(String)

    public static var separator: String = ","
}

extension Tag: Codable {

    public enum AnchorTagCodingError: Error {
        case decoding(String)
    }

    public init(from decoder: Decoder) throws {
		let values = try decoder.singleValueContainer()

		if let value = try? values.decode(String.self) {
			precondition(!value.contains(Tag.separator), "Tag may not contain separator character: \(Tag.separator)")
			self = .custom(value)
		} else {
            throw AnchorTagCodingError.decoding("\(dump(values))")
        }
    }

    public func encode(to encoder: Encoder) throws {
        switch self {
        case .wildcard:
			preconditionFailure("\(self) Tag exists only as an abstract placeholder for cases where we do not care about tag, thus can not be applied to object")
        case .custom(let value):
			precondition(!value.contains(Tag.separator), "Tag may not contain separator character: \(Tag.separator)")
			var container = encoder.singleValueContainer()
			try container.encode(value)
        }
    }
}
