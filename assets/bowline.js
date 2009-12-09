var Bowline = {
  msgs: [],
  callbacks: {},
  uuid: 0,
  bound: {},
  
  id: function(){
    return ++uuid;
  }
  
  // Usage: invoke(klass, method, *args)
  invoke: function(){
    var args    = $.makeArray(arguments);
    var klass   = args.shift();
    var method  = args.shift();
    var id      = id();
    
    var bopts   = args.pop();
    if(typeof(bopts) == "object" && bopts.callback){
      callbacks[id] = bopts.callback;
    } else {
      args.push(bopts);
    }
    
    msgs.push({
      klass:klass, 
      method:method, 
      args:args, 
      id:id
    });
  },
  
  // Usage: instanceInvoke(klass, id, method, *args)
  instanceInvoke: function(){
    var args = $.makeArray(arguments);
    args.splice(1, 0, "instance");
    invoke.apply(this, args);
  },
  
  helper: function(){
    // TODO
  },
  
  bind: function(el, klass, options){
    el = jQuery(el);
    el.chain(options);
    el.data('bowline', klass);
    if(!bound[klass]) bound[klass] = [];
    bound[klass].push(el);
  },
  
  // Bowline functions
  
  pollJS: function(){
    return JSON.stringify(msgs);
  }
  
  invokeJS: function(str){
    log("Evaling: " + str);
    return JSON.stringify(eval(str));
  },
  
  invokeCallback: function(id, res){
    // TODO - delete callback after
    callbacks[id](JSON.parse(res));
  },
  
  created: function(klass, id, item){
    jQuery.each(callbacks[klass], function(){
      this.items('add', item);
    });
  },
  
  updated: function(klass, id, item){
    jQuery.each(callbacks[klass], function(){
      this.items('update', findItem(this, id));
    });
  },
  
  removed: function(klass, id){
    jQuery.each(callbacks[klass], function(){
      this.items('remove', findItem(this, id));
    });
  },
  
  trigger: function(klass, event, data){
    jQuery.each(callbacks[klass], function(){
      this.trigger(event, data);
    });
  },
  
  // System functions
  
  findItem: function(el, id){
    return jQuery.grep(el.items(true), function(n, i){
      return n.item().id == id;
    })[0];
  },
  
  log: function(msg){
    console.log(msg);
  }
};

function($){
  $.fn.invoke = function(){
    if($(this).chain('active')){
      var args = $.makeArray(arguments);
      if($(this).data('bowline')){
        // Class method
        var klass = $(this).data('bowline');
        args.unshift(klass);
        Bowline.invoke.apply(this, args);
      } else {
        // Instance method
        var klass = $(this).item('root').data('bowline');
        var id = $(this).item().id;
        args.unshift(id);
        args.unshift(klass);
        Bowline.instanceInvoke.apply(this, args);
      }
    } else {
      throw 'Chain not active';
    }
  };
  
  $.fn.bind = function(){
    var args = $.makeArray(arguments);
    args.unshift(this);
    Bowline.bind.apply(this, args);
  };
}(jQuery);