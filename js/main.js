// import your packages here
import { fetchData, postData  } from "./modules/TheDataMiner.js";

(() => {
  let lightBox = document.querySelector(".info"),
    title = document.querySelector(".info h3"),
    UserDescription = document.querySelector(".info p"),
    closeButton = document.querySelector(".closeButton");
  // stub * just a place for non-component-specific stuff
  console.log('loaded');

  function popErrorBox(message) {
    alert("Something has gone horribly, horribly wrong");
  }

  function handleDataSet(data) {
    let Name = data[0].name,
      des = data[0].description;

    title.textContent = Name;
    UserDescription.textContent = des;

    lightBox.classList.add("open");
    document.body.classList.add("open");
  }

  function close() {
    lightBox.classList.remove("open");
    document.body.classList.remove("open");
  }
  closeButton.addEventListener("click", close);

  function retrieveProjectInfo(event) {
    // test for an ID

    if (!event.target.id) { return }

    fetchData(`./includes/index.php?id=${event.target.id}`).then(data => handleDataSet(data)).catch(err => console.log(err));
  }

  function renderPortfolioThumbnails(thumbs) {
    let mainSectiona = document.querySelector('#mainSection'),
      mainTemplate = document.querySelector('#infoTemp').content;

    for (let user in thumbs) {
      let currentSec = mainTemplate.cloneNode(true),
        currentUserText = currentSec.querySelector('.user').children;

      currentUserText[0].src = `images/${thumbs[user].image}`;
      currentUserText[0].id = thumbs[user].id;

      mainSectiona.appendChild(currentSec);
    }
    mainSectiona.addEventListener("click", retrieveProjectInfo);
  }

  fetchData("./includes/index.php").then(data => renderPortfolioThumbnails(data)).catch(err => { console.log(err); popErrorBox(err); });
})();