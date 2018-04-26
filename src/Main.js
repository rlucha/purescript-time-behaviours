var setAnimationFrameBehaviour = function(fn) {
  var requestAnimationFrame_ = function(t) {
    // Currying?
    fn(t)()
    window.requestAnimationFrame(requestAnimationFrame_)
  } 
  requestAnimationFrame_(0)
  return function() {}
}

exports.setAnimationFrameBehaviour = setAnimationFrameBehaviour