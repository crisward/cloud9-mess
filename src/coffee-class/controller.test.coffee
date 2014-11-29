controller = require './controller.coffee'
ctrl = {} 
fakeDB = {}

describe "coffee-class controller",->

  beforeEach ->
    ctrl = new controller(fakeDB)

  it "should have four things",-> 
    expect(ctrl.things.length).toBe(0)
  
  it "should add an item and reset it",->
    ctrl.item="test";
    ctrl.add()
    expect(ctrl.things.length).toBe(1)
    expect(ctrl.item).toEqual("")
    
  it "should not add an item, if nothing is set",->
    ctrl.add()
    expect(ctrl.things.length).toBe(0)
  
  describe "removing items",->
    beforeEach ->
      ctrl.item="test1";
      ctrl.add() 
      ctrl.item="test2";
      ctrl.add() 
      ctrl.item="test3";
      ctrl.add() 
    
    it "should remove item by index",->
      expect(ctrl.things.length).toBe(3)
      ctrl.remove(1)
      expect(ctrl.things.length).toBe(2)
      expect(ctrl.things[1]).toEqual("test3")
    
    it "should remove all items",->
      expect(ctrl.things.length).toBe(3)
      ctrl.reset()
      expect(ctrl.things.length).toBe(0)
    
    
    