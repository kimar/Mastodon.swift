import Foundation
import Moya

extension Mastodon {
    public enum Blocks {
        case blocks
    }
}

extension Mastodon.Blocks: TargetType {
    fileprivate var apiPath: String { return "/api/v1/blocks" }
    
    /// The target's base `URL`.
    public var baseURL: URL {
        return Settings.shared.baseURL!
    }
    
    /// The path to be appended to `baseURL` to form the full `URL`.
    public var path: String {
        switch self {
        case .blocks:
            return "\(apiPath)"
        }
    }
    
    /// The HTTP method used in the request.
    public var method: Moya.Method {
        switch self {
        case .blocks:
            return .get
        }
    }
    
    /// The parameters to be incoded in the request.
    public var parameters: [String: Any]? {
        switch self {
        case .blocks:
            return nil
        }
    }
    
    /// The method used for parameter encoding.
    public var parameterEncoding: ParameterEncoding {
        switch self {
        case .blocks:
            return URLEncoding.default
        }
    }
    
    /// Provides stub data for use in testing.
    public var sampleData: Data {
        return "{}".data(using: .utf8)!
    }
    
    /// The type of HTTP task to be performed.
    public var task: Task {
        switch self {
        case .blocks:
            return .request
        }
    }
}
