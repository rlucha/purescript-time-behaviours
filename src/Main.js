var setAnimationFrameBehaviour = function(fn) {
  var requestAnimationFrame_ = function(t) {
    // Currying?
    fn(t)()
    window.requestAnimationFrame(requestAnimationFrame_)
  } 
  requestAnimationFrame_(0)
  // Avoids PS["Main"].main() not being a function
  return function() {}
}

exports.setAnimationFrameBehaviour = setAnimationFrameBehaviour