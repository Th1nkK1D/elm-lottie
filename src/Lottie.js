class Lottie extends HTMLElement {
  constructor() {
    super();
  }

  connectedCallback() {
    this.setTextContent();
  }

  attributeChangedCallback() {
    this.setTextContent();
  }

  static get observedAttributes() {
    return [];
  }

  setTextContent() {
    this.textContent = "Lottie custom HTML";
  }
}

customElements.define("elm-lottie", Lottie);
