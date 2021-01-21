const dynamicCircle = () => {

  var circle = document.querySelector('#progress_circle');

  if (circle === null)
    return

  var radius = circle.r.baseVal.value;
  var circumference = radius * 2 * Math.PI;

  circle.style.strokeDasharray = `${circumference} ${circumference}`;
  circle.style.strokeDashoffset = `${circumference}`;

  function setProgress(percent) {

    const offset = circumference - percent / 100 * circumference;
    circle.style.strokeDashoffset = offset;

  }

const input = document.querySelector('#progress_number');
setProgress(input.value);

}

export default dynamicCircle;
