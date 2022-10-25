- [Stateful widgets](#stateful-widgets)

## Stateful widgets

1. Immutable; properties can't change - all values are final
2. Requires atleast two classes 
   1. a StatefulWidget class that creates an instance of
   2. a State class: Most of the app’s logic resides here
   
    > The StatefulWidget class is, itself, immutable and can be thrown away and regenerated, but the State class persists over the lifetime of the widget
3. Stateful class boilerplate code `stful`
   > By default, the name of the State class is prefixed with an underbar `_`. Prefixing an identifier with an underscore enforces privacy in the Dart language and is a _recommended best practice for State objects_.