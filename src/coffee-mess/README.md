# Coffeescript with controller as in Angular 1.3

Controllers, with controller as use `this` as the controller scope.
In coffee script `this` is represented as `@` so a much simpler syntax is possible.
Ie.


```javascript
angular.module 'coffeeMess',[]

.controller 'coffeeMess',->
  @things = []
  @item = ""
  @add = -> 
    @things.push(@item) if(@item)
    @item = ""
    
```