// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

const inputField = document.getElementById("inputField");


// input要素のバリデーション
inputField.addEventListener("input", function() {
  if (inputField.value.length > 70) {
    inputField.setCustomValidity("70文字以下で入力してください。");
  } else {
    inputField.setCustomValidity("");
  }
});


