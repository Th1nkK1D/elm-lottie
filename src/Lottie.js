class Lottie extends HTMLElement {
  constructor() {
    super();
  }

  connectedCallback() {
    const { path } = this.dataset;

    bodymovin.loadAnimation({
      container: this,
      path,
      loop: true,
      autoplay: true,
    });
  }
}

customElements.define("elm-lottie", Lottie);
