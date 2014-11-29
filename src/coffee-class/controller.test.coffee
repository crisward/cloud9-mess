controller = require './controller.coffee'
ctrl = {} 
ThingDBMock = query:(cback)-> cback(['one']) 

describe "coffee-class controller",->
  
  it "should load things",->
    spyOn(ThingDBMock, 'query');
    ctrl = new controller(ThingDBMock)
    expect(ThingDBMock.query).toHaveBeenCalled();

  beforeEach ->
    ctrl = new controller(ThingDBMock)

  it "should have one things loaded from server",-> 
    expect(ctrl.things.length).toBe(1)
    
  it "should add an item and reset it",->
    ctrl.item="test";
    ctrl.add()
    expect(ctrl.things.length).toBe(2)
    expect(ctrl.item).toEqual("")
    
  it "should not add an item, if nothing is set",->
    ctrl.add()
    expect(ctrl.things.length).toBe(1)
  
  describe "removing items",->
    beforeEach ->
      ctrl.item="test1";
      ctrl.add() 
      ctrl.item="test2";
      ctrl.add() 
      ctrl.item="test3";
      ctrl.add() 
    
    it "should remove item by index",->
      expect(ctrl.things.length).toBe(4)
      ctrl.remove(1)
      expect(ctrl.things.length).toBe(3)
      expect(ctrl.things[1]).toEqual("test2")
    
    it "should remove all items",->
      expect(ctrl.things.length).toBe(4)
      ctrl.reset()
      expect(ctrl.things.length).toBe(0)
    
    
    