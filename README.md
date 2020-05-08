# AR Plane

## Introduction:

This project is created to understand the working of AR Kit using 3D Object. 

---------------------------------------------------------------------------------------------------

## Installation:

You need to create an AR app using Augmented Reality App template.

----------------------------------------------------------------------------------------------------

## Configuration:


There is no specific configuration needed for this implementation.

----------------------------------------------------------------------------------------------------

## Coding Part 


### Setting the Anchor and adding 3D model

```
    func showARObject(objectName:String) {
       
       //Adding horizontal anchor to the view
       let anchor = AnchorEntity(plane:.horizontal)
       arView.scene.addAnchor(anchor)
       
       //Adding AR Object
       let arModel = try! Entity.loadModel(named:objectName)
       anchor.addChild(arModel)
       
    }
```

### Invoking

```
    showARObject(objectName:"toy_car")
```

### Check out my Post about Augmented Reality : [Augmented Reality - I](https://vijaysn.com/mobile/ios/ios-augmented-reality-ar-i)
