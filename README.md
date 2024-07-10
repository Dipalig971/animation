# animation


# Hero Widget in Flutter

In Flutter, a "hero" widget is a type of animation widget used to create a seamless transition between two routes (screens). The Hero widget ensures that the widget appears to "fly" from one screen to another during a navigation action.

## Code Sample

```dart
 child: Hero(
            tag: 'hero-tag',
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Tap me',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ),

```
<div align="center">
<img src=https://github.com/Dipalig971/animation/assets/143181151/33f165f7-9795-49b7-bab6-81671ee6e1a6"" height="500px" hspace=20></img>
<img src="https://github.com/Dipalig971/animation/assets/143181151/df0ca956-2fa2-4bd9-8c8d-0ebb6ed64c2d" height="500px" hspace=20></img>
  <video src="https://github.com/Dipalig971/animation/assets/143181151/0e46240d-e0ac-4d17-94d8-4543b6160db7">
</div>





