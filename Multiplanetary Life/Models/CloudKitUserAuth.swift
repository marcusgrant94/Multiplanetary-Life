//
//  CloudKitUserAuth.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI
import CloudKit


class CloudKitUserAuthViewModel: ObservableObject {
    
    static let shared = CloudKitUserAuthViewModel()
    
    @Published var permissionStatus: Bool = false
    @Published var isSignedInToiCloud: Bool = false
    @Published var error: String = ""
    @Published var userName: String = ""
    @Published var userLastName: String = ""
    
    let container = CKContainer(identifier: "iCloud.random.Multiplanetary-Life")
    
    init() {
        getiCLoudStatus()
        requestPermission()
         fetchiCLoudUserRecordID()
    }
    
    private func getiCLoudStatus() {
        CKContainer.default().accountStatus { [weak self] returnedStatus, returnedError in
            DispatchQueue.main.async {
                switch returnedStatus {
                case .available:
                    self?.isSignedInToiCloud = true
                case .noAccount:
                    self?.error = CloudKitError.iCloudAccountNotFound.rawValue
                case .couldNotDetermine:
                    self?.error = CloudKitError.iCLoudAccountNotDetermined.rawValue
                case .restricted:
                    self?.error = CloudKitError.iCloudAccountRestricted.rawValue
                default:
                    self?.error = CloudKitError.iCloudAccountUnknown.rawValue
                }
            }
        }
        
    }
    
    enum CloudKitError: String, LocalizedError {
        case iCloudAccountNotFound
        case iCLoudAccountNotDetermined
        case iCloudAccountRestricted
        case iCloudAccountUnknown
    }
    
    func requestPermission() {
       container.requestApplicationPermission([.userDiscoverability]) { [weak self] returnedStatus,
            returnedError in
            DispatchQueue.main.async {
                if returnedStatus == .granted {
                self?.permissionStatus = true
                }
            }
        }
    }
    
    func fetchiCLoudUserRecordID() {
        container.fetchUserRecordID { [weak self] returnedID, returnedError in
            if let id = returnedID {
                self?.discoveriCLoudUser(id: id)
            }
        }
    }
    
    func discoveriCLoudUser(id: CKRecord.ID) {
        container.discoverUserIdentity(withUserRecordID: id) { [weak self] returnedIdentity, returnedError in
            DispatchQueue.main.async {
                if let name = returnedIdentity?.nameComponents?.givenName {
                    self?.userName = name
                }
                if let lastName = returnedIdentity?.nameComponents?.familyName {
                    self?.userLastName = lastName
                }
            }
        }
    }
    
}

struct CloudkitUserAuth: View {
    @ObservedObject var vm = CloudKitUserAuthViewModel.shared
    var body: some View {
        VStack {
            Text("IS SIGNED IN: \(vm.isSignedInToiCloud.description.uppercased())")
            Text(vm.error)
            Text("Permission: \(vm.permissionStatus.description.uppercased())")
            Text("Welcome \(vm.userName)")
    }
    }
}

struct CloudKitUserAuth_Previews: PreviewProvider {
    static var previews: some View {
        CloudkitUserAuth()
    }
}
