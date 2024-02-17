//
//  Network.swift
//  viacep-app
//
//  Created by Jackson Matheus on 15/02/24.
//
//
//import Foundation
//import AlamofireObjectMapper
//import ObjectMapper
//import Alamofire
//
//enum ResponseType {
//    case object
//    case array
//}
//
//protocol NetworkProtocol  {
//    var url: URL { get }
//    var headers: HTTPHeaders? { get }
//    var httpMethod: HTTPMethod { get }
//    var parameters: Parameters? { get }
//    var encoding: ParameterEncoding { get }
//    var responseType: ResponseType { get }
//}
//
//class BaseAuth {
//    open var count: Int = 0
//    
//    open func doAuthentication<T: Mappable>(_ petworkProtocol: NetworkProtocol, _ promise: NetworkPromise<T>){}
//    
//    open func onAuthenticationfailed(){}
//    
//    open func onUnauthorized<T: Mappable>(_ petworkProtocol: NetworkProtocol, _ promise: NetworkPromise<T>) {
//        if self.count >= 0 {
//            self.count = 0
//            self.onAuthenticationfailed()
//            return
//        }
//    }
//    
//    open func isAuthenticated<T: Mappable, E>(_ response: DataResponse<T, E>) -> Bool {
//        let result: Bool = response.response?.statusCode != 401
//        
//        if result {
//            self.count = 0
//        }
//        
//        return result
//    }
//}
//
////MARK: NoAuth
//class NoAuth: BaseAuth {
//    override func isAuthenticated<T, E>(_ response: DataResponse<T, E>) -> Bool where T : Mappable {
//        return true
//    }
//}
//
//class NetworkPromise <T: Mappable> {}
