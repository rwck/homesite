var Interests = {

  index: 0,

  array: [],

  playInterests: function(interestsArray) {
    if (this.index === 0) {
      this.array = this.shuffle(interestsArray);
    } else {
      this.array = this.array;
    }
    // console.log(this.index);
    // console.log(this.array[this.index]);
    this.index = (this.index + 1) % this.array.length;
    // console.log("index is", this.index);
    $(".interests").html("<p>" + this.array[this.index] + "</p>");
  },

  shuffle: function(array) {
    var currentIndex = array.length,
      temporaryValue, randomIndex;

    // While there remain elements to shuffle...
    while (0 !== currentIndex) {

      // Pick a remaining element...
      randomIndex = Math.floor(Math.random() * currentIndex);
      currentIndex -= 1;

      // And swap it with the current element.
      temporaryValue = array[currentIndex];
      array[currentIndex] = array[randomIndex];
      array[randomIndex] = temporaryValue;
    }

    return array;
  }
}

function deblur() {
  $(".content-box").mouseenter(function() {
    var element = this.id;
    // console.log(element);
    $(this).toggleClass("blur-box");
  });
  $(".content-box").mouseleave(function() {
    var element = this.id;
    // console.log(element);
    $(this).toggleClass("blur-box");
  })
}

function getRid() {
  setTimeout(function() {
    $(".delete-me").fadeOut(5000);
  }, 5000);
  setTimeout(function() {
    $(".interests").fadeOut(5000);
  }, 7000);
}

$(document).ready(function() {
  deblur();
  getRid();
});

// $(document).ready(function(){
// 	$('#nav-icon3').click(function(){
// 		$(this).toggleClass('open');
// 	});
// });
