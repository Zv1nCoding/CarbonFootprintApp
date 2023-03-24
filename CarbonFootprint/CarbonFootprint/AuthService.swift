//
//  AuthService.swift
//  CarbonFootprint
//
//  Created by user233253 on 2/28/23.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class AuthService {
    
    public static let shared = AuthService()
    private init() {}
    
    
    public func registerUser(with userRequest: RegisterUserRequest, completion: @escaping (Bool, Error?) -> Void) {
        let username = userRequest.username
        let email = userRequest.email
        let password = userRequest.password
        let carbonFootprint = userRequest.carbonFootprint
        let didQuiz = false
        
            
        Auth.auth().createUser(withEmail: email, password: password) {result, error in
            if let error = error {
                completion(false, error)
                return
            }

            guard let resultUser = result?.user else {
                completion(false, nil)
                return
            }

            let db = Firestore.firestore()
            db.collection("users")
                .document(resultUser.uid)
                .setData(["username": username, "email": email, "carbonFootprint": carbonFootprint, "didQuiz": didQuiz]) {error in
                    if let error = error{
                        completion(false, error)
                        return
                    }

                    completion(true, nil)
                }

            }
    }

    
    public func signIn(with userRequest: LoginUserRequest, completion: @escaping(Error?) -> Void) {
        Auth.auth().signIn(withEmail: userRequest.email, password: userRequest.password) {
            result, error in
            if let error = error {
                completion(error)
                return
            } else {
                completion(nil)
            }
        }
    }
    
    public func signOut(completion: @escaping (Error?) -> Void) {
        do {
            try Auth.auth().signOut()
            completion(nil)
        } catch let error {
            completion(error)
        }
    }
    
    public func forgotPassword(with email: String, completion: @escaping (Error?) -> Void) {
        Auth.auth().sendPasswordReset(withEmail: email) { error in
            completion(error)
        }
    }
    public func fetchUser(completion: @escaping (User?, Error?) -> Void) {
        guard let userUID = Auth.auth().currentUser?.uid else { return }
        
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userUID)
            .getDocument { snapshot, error in
                if let error = error {
                    completion(nil, error)
                    return
                }
                
                if let snapshot = snapshot,
                   let snapshotData = snapshot.data(),
                   //This right here is how I get the points
                   let username = snapshotData["username"] as? String,
                   let carbonFootprint = snapshotData["carbonFootprint"] as? Double,
                   let email = snapshotData["email"] as? String,
                   let didQuiz = snapshotData["didQuiz"] as? Bool {
                    let user = User(username: username, email: email, userUID: userUID, carbonFootprint: carbonFootprint, didQuiz: didQuiz)
                    completion(user, nil)
                }
                
            }
        
    }
    public func updateScore(with Score: Double, completion: @escaping (Bool,Error?) -> Void) {
        let carbonFootprint = "carbonFootprint"
        guard let userUID = Auth.auth().currentUser?.uid else {return}
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(userUID)
            .updateData([
                carbonFootprint : Score
            ]) {error in
                if let error = error {
                    print("error updating document: \(error)")
                    completion(false, error)
                }else {
                    print("succesfully updated \(Score)")
                    completion(true, nil)
                }
            }
    }
    public func updateDidQuiz(with quizCompleted: Bool, completion: @escaping (Bool,Error?) -> Void) {
        let didQuiz = "didQuiz"
        guard let userUID = Auth.auth().currentUser?.uid else {return}
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(userUID)
            .updateData([
                didQuiz : quizCompleted
            ]) {error in
                if let error = error {
                    print("error updating document: \(error)")
                    completion(false, error)
                }else {
                    print("succesfully updated \(quizCompleted)")
                    completion(true, nil)
                }
            }
    }

}


