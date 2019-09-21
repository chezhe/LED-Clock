//
//  UserSetting.swift
//  Flip Clock
//
//  Created by 王亮 on 2019/9/21.
//  Copyright © 2019 王亮. All rights reserved.
//

import Foundation

@propertyWrapper
struct UserDefault<T> {
  let key: String
  let defaultValue: T
  
  var wrappedValue: T {
    get {
      return UserDefaults.standard.object(forKey: key) as? T ?? defaultValue
    }
    set {
      UserDefaults.standard.set(newValue, forKey: key)
    }
  }
}

enum GlobalSettings {
  @UserDefault(key: "BELL_ENABLED", defaultValue: false)
  static var isBellEnabled: Bool
  
  @UserDefault(key: "BELL_HOUR", defaultValue: "00")
  static var bellHour: String
    
    @UserDefault(key: "BELL_MINUTE", defaultValue: "00")
    static var bellMinute: String
}
