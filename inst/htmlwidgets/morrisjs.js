HTMLWidgets.widget({

  name: 'morrisjs',

  type: 'output',
  
  factory: function(el, width, height) {
    return {
      renderValue: function(x) {
        x.element = el.id;
        
        // Workaround if only one series is plotted
        if ("ykeys" in x){
          if (x.ykeys.constructor !== Array) {
            x.ykeys = new Array(x.ykeys);
          }
          if (x.labels.constructor !== Array) {
            x.labels = new Array(x.labels);
          }
        }
        
        // Create the graph  
        var mjs;
        switch(x.type){
          case "Line": 
            mjs = new Morris.Line(x);
            break;
          case "Area": 
            mjs = new Morris.Area(x);
            break;
          case "Bar": 
            mjs = new Morris.Bar(x);
            break;
          case "Donut":
            mjs = new Morris.Donut(x);
            break;
        }
        // Draw it
        mjs.draw();
      },
      
      resize: function(x, width, height) {
        
      }
    };
  }
});
