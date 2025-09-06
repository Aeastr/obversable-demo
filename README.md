# @Observable vs ObservableObject Demo

Interactive SwiftUI demo comparing performance characteristics between the old ObservableObject pattern and the new @Observable macro.

Built with [RenderMeThis](https://github.com/Aeastr/RenderMeThis) for visual performance feedback.

## Key Difference

- **ObservableObject**: ALL views refresh when ANY `@Published` property changes
- **@Observable**: Only views using changed properties refresh (fine-grained reactivity)

## Features

- **Two-tab comparison** showing side-by-side behavior
- **RenderMeThis integration** for visual render tracking
- **Runtime debug toggles** to control visualization
- **Proper environment injection** patterns for both approaches

## Usage

1. Run in DEBUG mode to see RenderMeThis effects
2. Toggle debug visualization in the Debug tab
3. Test property updates and observe which views flash/change
4. Compare refresh patterns between tabs