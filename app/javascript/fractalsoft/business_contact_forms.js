function initBusinessContactFormAttachments() {
  const input = document.querySelector(".js-business-attachment-input");
  const filenameEl = document.querySelector(".js-business-attachment-filename");
  if (!input || !filenameEl) return;

  const update = () => {
    const file = input.files && input.files[0];
    if (!file) {
      filenameEl.textContent = "";
      filenameEl.classList.add("hidden");
      return;
    }
    filenameEl.textContent = file.name;
    filenameEl.classList.remove("hidden");
  };

  input.addEventListener("change", update);
  update();
}

document.addEventListener("turbolinks:load", initBusinessContactFormAttachments);

