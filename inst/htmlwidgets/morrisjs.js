HTMLWidgets.widget({

  name: 'morrisjs',

  type: 'output',

  initialize: function(el, width, height) {

    return {
    };

  },

  renderValue: function(el, x, instance) {
    console.log(x);

  new Morris.Line({
      element: x.id,
      data: x.data,
      xkey: x.xkey,
      ykeys: x.ykeys,
      labels: x.labels
});

  },

  resize: function(el, width, height, instance) {

  }

});
