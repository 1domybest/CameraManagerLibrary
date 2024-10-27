// The Swift Programming Language
// https://docs.swift.org/swift-book
import CameraManagerFrameWork
import OtisLogManagerLibrary

class CameraManagerLibrary {
    
    func getInstance(cameraOptions: CameraOptions) -> CameraManager {
        let _ = OtisLogManagerLibrary(projectName: "CameraMananger")
        return CameraManager(cameraOptions: cameraOptions)
    }
}
