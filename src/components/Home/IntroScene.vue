<template>
  <section class="scene-intro" id="intro">
    <div class="static-container">
      <h1 class="title">
        <span class="dinu">dinu</span>
        <span class="func">.is()</span>
      </h1>

      <TextBlock>
        <p class="-purple">Bociort Dinu</p>
        <p class="-gray">Software engineer</p>
      </TextBlock>
    </div>
  </section>
</template>

<script>
import TextBlock from '../TextBlock.vue'

export default {
  name: 'IntroScene',
  components: { TextBlock },
}
</script>
