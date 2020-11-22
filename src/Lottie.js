import data from "../example/animation.json";

class Lottie extends HTMLElement {
  constructor() {
    super();
  }

  connectedCallback() {
    bodymovin.loadAnimation({
      container: this,
      animationData: data,
      loop: true,
      autoplay: true,
    });
  }
}

customElements.define("elm-lottie", Lottie);
