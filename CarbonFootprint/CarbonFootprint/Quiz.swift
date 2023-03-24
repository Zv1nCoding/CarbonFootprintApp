//
//  Quiz.swift
//  CarbonFootprint
//
//  Created by user233253 on 3/1/23.
//

import Foundation


enum progressQuiz {
    case zero
    case ten
    case twenty
    case thirty
    case fourty
    case fifty
    case sixty
    case seventy
    case eighty
    case ninety
    case hundred
}

struct Quiz {
    let id: QuizType
    let name: String
    let progress: progressQuiz
}
