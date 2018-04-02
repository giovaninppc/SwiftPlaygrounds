import PlaygroundSupport
import SpriteKit


public func loadLiveView() {
    // Load the SKScene from 'GameScene.sks'
    let sceneView = SKView(frame: CGRect(x:0 , y:0, width: 640, height: 480))
    
    if let scene = GameScene(fileNamed: "GameScene") {
        // Set the scale mode to scale to fit the window
        scene.scaleMode = .aspectFit
        
        // Present the scene
        sceneView.presentScene(scene)
    }
    
    sceneView.ignoresSiblingOrder = false
    
    PlaygroundSupport.PlaygroundPage.current.liveView = sceneView
}
