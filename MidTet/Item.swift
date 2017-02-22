//
//  CreateList.swift
//  MidTet
//
//  Created by Student on 2017-02-21.
//  Copyright © 2017 MAPD114. All rights reserved.
//  Mykhailo Obelchak 300907244

import Foundation
import FirebaseDatabase

class Item{
    private var _name: String!
    private var _amount: Int!
    private var _ref: FIRDatabaseReference?
    
    var name: String{
        get {
            return _name
        }
        set {
            _name = newValue
        }
    }

    var amount: Int{
        get {
            return _amount
        }
        set {
            _amount = newValue
        }
    }
    
    var ref: FIRDatabaseReference? {
        get {
            return _ref
        }
        set {
            _ref = newValue
        }
    }
    
    init(name: String) {
        self._name = name
        self._amount = 0
    }
    
    init(snapshot: FIRDataSnapshot) {
        let snapshotValue = snapshot.value as! [String: AnyObject]
        self._name = snapshotValue["name"] as! String
        self._amount = (snapshotValue["amount"] as! Int)
        _ref = snapshot.ref
    }
    
    func toAnyObject() -> Any {
        return [
            "name": name,
            "amount": amount
        ]
    }
    
    
}
