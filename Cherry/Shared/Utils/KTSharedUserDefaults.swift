//
//  KTSharedUserDefaults.swift
//  Cherry
//
//  Created by Kenny Tang on 2/22/15.
//
//

import Foundation

class KTSharedUserDefaults {


    class var sharedUserDefaults: UserDefaults {
        struct Static {
            static let appGroupInstance = UserDefaults(suiteName:"group.biz.ghsystems.Cherry")!
            static let standardUserDefaults = UserDefaults.standard
            static let shouldUseAppGroupsForStorage = true
        }
        return Static.shouldUseAppGroupsForStorage ? Static.appGroupInstance : Static.standardUserDefaults
    }

    class var pomoDuration: Int {
        return (KTSharedUserDefaults.sharedUserDefaults.integer(forKey: "pomo_length")>0) ? KTSharedUserDefaults.sharedUserDefaults.integer(forKey: "pomo_length") : 25
    }

    class var breakDuration: Int {
        return (KTSharedUserDefaults.sharedUserDefaults.integer(forKey: "break_length")>0) ? KTSharedUserDefaults.sharedUserDefaults.integer(forKey: "break_length") : 25
    }

    class var shouldAutoDeleteCompletedActivites: Bool {
        return KTSharedUserDefaults.sharedUserDefaults.bool(forKey: "delete_completed_activities") ? KTSharedUserDefaults.sharedUserDefaults.bool(forKey: "delete_completed_activities") : true
    }

}
