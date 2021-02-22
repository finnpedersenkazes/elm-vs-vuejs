# Elm and Vue.js from a frontend perspective

## Inspiration
Inspired by this article on medium.com:

https://medium.com/js-dojo/elm-and-vue-js-from-a-frontend-perspective-90e8d23643a8

The strength of Elm is that you can easily refactor the code. In this example, I have put the similar code into a function. Compare the code to the article.

PS: The article does not show the CSS so I used the boostrap card to display it.

The line break that I put in this example, is just a quick and dirty one, but since it is in a function, you just have to change it in one place.

## Create Elm App
The app structure was quickly setup with Create Elm App.

Create Elm App is made by Eduard Kyvenko. Check it out here:

https://github.com/halfzebra/create-elm-app
Create Elm apps with no build configuration.


## Vue.js

The corresponding code in Vue.js from the article looks like this.

````
<template>
  <div class="container">
    <div class="container__inner">
      <div class="container__inner-content">
        <h2 class="container__inner-content-title">this.vueTitleText</h2>
        <p class="container__inner-content-description">this.vueTitleDescription</p>
      </div>
    </div>
    <div class="container__inner">
      <div class="container__inner-content">
        <h2 class="container__inner-content-title">this.elmTitleText</h2>
        <p class="container__inner-content-description">this.elmTitleDescription</p>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    data: {
      vueTitleText: "Vue",
      vueTitleDescription: "JavaScript Framework",
      elmTitleText: "Elm",
      elmTitleDescription: "Functional Language"
    }
  }
</script>

<style lang="scss" scoped>

</style>
````

What do you think is easier to read and maintain?
