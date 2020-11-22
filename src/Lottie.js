class Lottie extends HTMLElement {
  constructor() {
    super();

    this.animation = null;
  }

  connectedCallback() {
    const { play, ...otherConfigs } = this.getParsedDataset();

    this.animation = bodymovin.loadAnimation({
      container: this,
      autoplay: play,
      ...otherConfigs,
    });

    this.style.display = "block";
  }

  static get observedAttributes() {
    return ["data-play"];
  }

  attributeChangedCallback() {
    if (!this.animation) {
      return;
    }

    const { play } = this.getParsedDataset();

    if (play) {
      this.animation.play();
    } else {
      this.animation.pause();
    }
  }

  getParsedDataset() {
    return Object.entries(this.dataset).reduce(
      (obj, [key, value]) => ({ ...obj, [key]: this.parseObjectValue(value) }),
      {}
    );
  }

  parseObjectValue(value) {
    switch (value) {
      case "true":
        return true;
      case "false":
        return false;
      default:
        return value;
    }
  }
}

customElements.define("elm-lottie", Lottie);
