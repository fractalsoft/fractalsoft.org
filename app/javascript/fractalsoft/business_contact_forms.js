function initBusinessContactFormAttachments() {
  const input = document.querySelector(".js-business-attachment-input");
  const filenameEl = document.querySelector(".js-business-attachment-filename");
  if (!input || !filenameEl) return;
  if (input.dataset.attachmentInit === "true") return;
  input.dataset.attachmentInit = "true";

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

function initBusinessContactFormValidation() {
  const form = document.querySelector(".js-business-contact-form");
  if (!form) return;
  if (form.dataset.validationInit === "true") return;
  form.dataset.validationInit = "true";

  const submitButton = form.querySelector(".js-business-submit");
  const requiredFields = Array.from(form.querySelectorAll(".js-required-field"));
  const summary = form.querySelector(".js-business-form-error-summary");
  const summaryList = form.querySelector(".js-business-form-error-list");
  const requiredMessageTemplate =
    form.dataset.requiredMessageTemplate || "%{field} is required.";
  const invalidEmailMessage =
    form.dataset.invalidEmailMessage || "Please provide a valid email address.";

  if (!submitButton || requiredFields.length === 0 || !summary || !summaryList) return;

  const getErrorMessage = (field) => {
    const fieldLabel = field.dataset.fieldLabel || "This field";
    if (field.validity.valueMissing) {
      return requiredMessageTemplate.replace("%{field}", fieldLabel);
    }
    if (field.type === "email" && field.validity.typeMismatch) {
      return invalidEmailMessage;
    }
    return "";
  };

  const renderFieldState = (field, showErrors) => {
    const inlineError = form.querySelector(`.js-field-error[data-for="${field.id}"]`);
    const message = getErrorMessage(field);
    const hasError = message.length > 0;

    if (showErrors && hasError) {
      field.classList.add("input-error");
      field.setAttribute("aria-invalid", "true");
      if (inlineError) {
        inlineError.textContent = message;
        inlineError.classList.remove("hidden");
      }
    } else {
      field.classList.remove("input-error");
      field.removeAttribute("aria-invalid");
      if (inlineError) {
        inlineError.textContent = "";
        inlineError.classList.add("hidden");
      }
    }

    return hasError ? message : null;
  };

  const updateValidation = (showErrors = false) => {
    const errors = requiredFields
      .map((field) => renderFieldState(field, showErrors))
      .filter(Boolean);

    submitButton.disabled = errors.length > 0;

    if (showErrors && errors.length > 0) {
      summary.classList.remove("hidden");
      summaryList.innerHTML = errors.map((error) => `<li>${error}</li>`).join("");
    } else {
      summary.classList.add("hidden");
      summaryList.innerHTML = "";
    }

    return errors;
  };

  requiredFields.forEach((field) => {
    field.addEventListener("input", () => updateValidation(true));
    field.addEventListener("blur", () => updateValidation(true));
  });

  form.addEventListener("submit", (event) => {
    const errors = updateValidation(true);
    if (errors.length > 0) {
      event.preventDefault();
      const firstInvalid = requiredFields.find((field) => getErrorMessage(field));
      if (firstInvalid) firstInvalid.focus();
    }
  });

  updateValidation(false);
}

function resetBusinessContactFormUiState() {
  const form = document.querySelector(".js-business-contact-form");
  if (!form) return;

  const requiredFields = Array.from(form.querySelectorAll(".js-required-field"));
  requiredFields.forEach((field) => {
    field.classList.remove("input-error");
    field.removeAttribute("aria-invalid");
  });

  form.querySelectorAll(".js-field-error").forEach((inlineError) => {
    inlineError.textContent = "";
    inlineError.classList.add("hidden");
  });

  const summary = form.querySelector(".js-business-form-error-summary");
  const summaryList = form.querySelector(".js-business-form-error-list");
  if (summary) summary.classList.add("hidden");
  if (summaryList) summaryList.innerHTML = "";

  const submitButton = form.querySelector(".js-business-submit");
  if (submitButton) {
    submitButton.disabled = !requiredFields.every((field) => field.checkValidity());
  }

  const filenameEl = document.querySelector(".js-business-attachment-filename");
  if (filenameEl) {
    filenameEl.textContent = "";
    filenameEl.classList.add("hidden");
  }
}

document.addEventListener("turbolinks:load", () => {
  initBusinessContactFormAttachments();
  initBusinessContactFormValidation();
});

document.addEventListener("turbolinks:before-cache", () => {
  resetBusinessContactFormUiState();
});

