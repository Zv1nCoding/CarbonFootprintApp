//
//  RegisterUserRequest.swift
//  CarbonFootprint
//
//  Created by user233253 on 2/28/23.
//

import Foundation

struct RegisterUserRequest {
    let username: String
    let email: String
    let password: String
    let carbonFootprint: Double
    let didQuiz: Bool
}
