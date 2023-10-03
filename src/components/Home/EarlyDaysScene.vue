<template>
  <div class="earlyDays">
    <TitleSection scene="earlyTitle">
      <TitleFunction
        params="2017,2021"
        subtitle="..."
        >earlyDays</TitleFunction
      >

      <div class="clouds cloud-1"></div>
      <Pepe v-bind="{ isPlaying }" />
      <div class="clouds cloud-2"></div>
      <div class="clouds cloud-3"></div>
      <Ocean v-bind="{ isPlaying }" />
    </TitleSection>

    <SceneSection id="early-days">
      <TextBlock>
        <p>Polytechnic University of Timisoara, Faculty of Automation and Computers</p>
        <p class="-big">
          Just a student<br />
          <span class="-purple">with strong determination.</span>
        </p>
      </TextBlock>
    </SceneSection>
    <SceneSection id="early-days2">
      <TextBlock>
        <p class="-big">
          <span class="-purple">Rover Protoype</span>
        </p>
        <p>
          The project for my bachelor's thesis.
        </p>
        <p>
          I designed and create a microcontroller-based mini rover named 'Rover Prototype' using Arduino, with a 4-wheeled chassis and a 3-axis robotic arm, controlled via a mobile application I developed using Android Studio and Java, enabling real-time control and scenario recording and repeating.<br />
        </p>
      </TextBlock>
    </SceneSection>
    <SceneSection id="early-days3">
      <TextBlock>
        <p>
          <br/>
          <span class="-big -purple">City Dangers Alert</span>
          I developed the 'City Dangers Alert' mobile app as a university project, using Android Studio, Java, and Firebase for the database. The app enables users to report urban issues, such as illegal parking, public lighting problems, and damaged pipes, for resolution by authorities and community awareness. It features two components: a user profile with relevant personal data and a Google Maps API component for reporting issues with map markers and associated images, which can be confirmed or denied by other users.
        </p>
      </TextBlock>
    </SceneSection>
  </div>
</template>

<script>
import Pepe from '../Characters/Pepe/Pepe.vue'
import Ocean from '../Characters/Ocean/Ocean.vue'
import TitleSection from '../TitleSection.vue'
import TitleFunction from '../TitleFunction.vue'
import TextBlock from '../TextBlock.vue'
import SceneSection from '../SceneSection.vue'

export default {
  name: 'EarlyDaysScene',
  components: {
    TitleSection,
    Pepe,
    Ocean,
    TitleFunction,
    TextBlock,
    SceneSection,
  },
  props: {
    isPlaying: Boolean,
  },
}
</script>

<style lang="scss">
.earlyDays {
  .pepe {
    position: absolute;
    z-index: 2;
    top: 50%;
    left: 100%;
    transform: scale(0.4) translate3d(0, -50%, 0);
    transform-origin: 0 0;

    @media screen and (max-width: 568px) {
      transform: scale(0.2) translate3d(0, -50%, 0);
    }
  }

  .clouds {
    position: absolute;
    width: 150vw;
    height: 150vh;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    transform-origin: 50% 50%;
    background: url('../Characters/Pepe/assets/clouds-1.png') no-repeat center;
    background-size: contain;
    opacity: 0.5;

    &.cloud-2 {
      background-image: url('../Characters/Pepe/assets/clouds-2.png');
    }

    &.cloud-3 {
      background-image: url('../Characters/Pepe/assets/clouds-3.png');
      width: 100vw;
      height: 100vh;
      z-index: -1;
      opacity: 0.25;
    }
  }
}
</style>
