//
//  GraphFactory.swift
//  Kick
//
//  Created by BernSternWhoEarns on 11/10/17.
//  Copyright © 2017 BernSternWhoEarns. All rights reserved.
//

import Foundation

enum GraphType: String {
    case query = "query"
    case mutation = "mutation"
}

class GraphFactory {
    
    static func createGraphString(type: GraphType,
                                  action: String,
                                  parameters: [String : Any],
                                  properties: [String]) -> String {
        
        var graphString = ""
        print("PARAMETERS: \(parameters.count)")
        graphString.append("\(type.rawValue){\(action)")
        
        if !parameters.isEmpty {
            graphString.append("(")
            for (key, value) in parameters {
                if value is String {
                    
                    let stringified = (value as! String)
                        .replacingOccurrences(of: "\n", with: "")
                        .replacingOccurrences(of: "\"", with: "\\\"")
                    
                    graphString.append("\(key): \"\(stringified)\",")
                } else {
                    graphString.append("\(key): \(value),")
                }
            }
            
            graphString.remove(at: graphString.index(before: graphString.endIndex))
            graphString.append(")")
        }
        
        if !properties.isEmpty {
            graphString.append("{")
            for property in properties {
                graphString.append("\(property),")
            }
            graphString.remove(at: graphString.index(before: graphString.endIndex))
            graphString.append("}")
        }
        
        graphString.append("}")
        
        return graphString
    }
    
}
