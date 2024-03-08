// seleciona o elemento main-container
const mainContainer = document.querySelector('.main-container');
const buttons = document.querySelectorAll('.content-button');
var playerName = document.getElementById("player_name");
var playerJob = document.getElementById("player_job");
var playerPayment = document.getElementById("player_payment");

let jobsInserted = false;
let selfCardsData = [];

window.addEventListener('message', function(event) {
  switch (event.data.action) {
    case 'openUI':
      selfCardsData = event.data.jobList;
      playerName.innerHTML = event.data.PlayerFullName;
      playerJob.innerHTML = event.data.PlayerJobLabel;
      playerPayment.innerHTML = event.data.JobPayment;

      $(".main-card").fadeIn();

      if(jobsInserted == false) { 
          selfCardsData.forEach(cardData => {
            const cardElem = document.createElement('div');
            cardElem.classList.add('self-card');
            if (selfCardsData.length <= 6) {
              cardElem.style.width = "32.42%";
              mainContainer.classList.add("hide-scrollbar");
            } else {
              mainContainer.classList.remove("hide-scrollbar");
            }  
            cardElem.innerHTML = `
              <div class="self-card-header">${cardData['title']}</div>
              <div class="self-card-container">
                <div class="self-card-icons">
                  <i class="${cardData['icon']}"></i>
                </div>
                <p><b>Actions:</b> ${cardData['actions']}</p>
                <button id=${cardData['jobid']} class="content-button">Postuler</button>
              </div>
            `;
            
            mainContainer.appendChild(cardElem);
          
            const button = cardElem.querySelector('button');
            button.addEventListener('click', function() {
              const jobid = button.id;
              $.post('https://fxJobMenu/action', JSON.stringify({
                action: 'setJob',
                jobid: jobid,
              }));
            });
          });
        }
        jobsInserted = true;

      case 'updateUI':
        playerName.innerHTML = event.data.PlayerFullName;
        playerJob.innerHTML = event.data.PlayerJobLabel;
        playerPayment.innerHTML = event.data.JobPayment;
    break;
  }
})


// On ESC key
$(document).ready(function() {
  document.onkeyup = function(data) {
      $.post('https://fxJobMenu/action', JSON.stringify({
        action: 'close',
      }));
      if (data.which == 27) {
        $(".main-card").fadeOut();
      }
  };
});
