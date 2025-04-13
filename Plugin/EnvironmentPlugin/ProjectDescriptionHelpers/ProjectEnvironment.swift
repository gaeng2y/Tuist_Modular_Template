import Foundation
import ProjectDescription

public struct ProjectEnvironment {
    public let name: String
    public let organizationName: String
    public let deploymentTargets: DeploymentTargets
    public let destination: Destination
    public let baseSetting: SettingsDictionary
    public let isCI: Bool
}

public let env = ProjectEnvironment(
    name: "",
    organizationName: "",
    deploymentTargets: .multiplatform(iOS: "18.0"),
    destination: .iPhone,
    baseSetting: [:],
    isCI: (ProcessInfo.processInfo.environment["TUIST_CI"] ?? "0") == "1" ? true : false
)
