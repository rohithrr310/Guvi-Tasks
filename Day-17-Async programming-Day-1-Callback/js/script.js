/*----------Call back hell definition--------------- */

//Callback hell is a situation where code becomes overly nested and difficult to manage due to the excessive use of callbacks for handling asynchronous operations. It occurs when multiple asynchronous tasks are dependent on each other, leading to a chain of nested callback functions.

//Note: On these task apart from constraints, set timeout is not mentioned, so for acheiving call back hell, set timeout used repeatedly to display countdown timer

let display = document.getElementById("display");
let countDown = 10;
let message = "Happy Independence Day";
setTimeout(() => {
  display.innerText = countDown;
  countDown--;
  setTimeout(() => {
    display.innerText = countDown;
    countDown--;
    setTimeout(() => {
      display.innerText = countDown;
      countDown--;
      setTimeout(() => {
        display.innerText = countDown;
        countDown--;
        setTimeout(() => {
          display.innerText = countDown;
          countDown--;
          setTimeout(() => {
            display.innerText = countDown;
            countDown--;
            setTimeout(() => {
              display.innerText = countDown;
              countDown--;
              setTimeout(() => {
                display.innerText = countDown;
                countDown--;
                setTimeout(() => {
                  display.innerText = countDown;
                  countDown--;
                  setTimeout(() => {
                    display.innerText = countDown;
                    countDown--;
                    setTimeout(() => {
                      display.innerText = message;
                      if (display.innerText == "Happy Independence Day") {
                        display.classList.add("zoom");
                      }
                    }, 1000);
                  }, 1000);
                }, 1000);
              }, 1000);
            }, 1000);
          }, 1000);
        }, 1000);
      }, 1000);
    }, 1000);
  }, 1000);
}, 1000);
