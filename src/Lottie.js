class Lottie extends HTMLElement {
  constructor() {
    super();
  }

  connectedCallback() {
    bodymovin.loadAnimation({
      container: this,
      ...this.getParsedDataset(),
    });
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
