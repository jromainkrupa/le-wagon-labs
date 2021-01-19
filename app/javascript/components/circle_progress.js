const dynamicCircle = () => {

  var circle = document.querySelector('circle');

  if (circle === null)
    return

  console.log(circle)

  var radius = circle.r.baseVal.value;
  var circumference = radius * 2 * Math.PI;

  circle.style.strokeDasharray = `${circumference} ${circumference}`;
  circle.style.strokeDashoffset = `${circumference}`;
  console.log(circumference)

  function setProgress(percent) {

    const offset = circumference - percent / 100 * circumference;
    circle.style.strokeDashoffset = offset;
    console.log(offset);
    console.log(circle.style.strokeDashoffset);
  }

const input = document.querySelector('input');
setProgress(input.value);

input.addEventListener('change', function(e) {
  console.log(circle.style.strokeDashoffset)
  console.log("tata")
  if (input.value < 101 && input.value > -1) {
    setProgress(input.value);
  }
})

}

export default dynamicCircle;
