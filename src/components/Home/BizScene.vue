<template>
  <div class="bizScene">
    <TitleSection scene="bizTitle">
      <TitleFunction params="2023,Now">Continental</TitleFunction>
    </TitleSection>

    <SceneSection id="biz1">
      <TextBlock>
        <p class="-big">
          From 2021 to 2023 I was
          <strong class="-purple">Software tester</strong>
          @
          <a
            href="https://www.elektrobit.com/"
            target="_blank"
            title="Visit Elektrobit's website"
          >
            Elektrobit</a
          >.
        </p>

        <p>
          •Actively contributed as a member of a testing and integration team following AGILE and SCRUM methodologies.
        </p>
        <p>
          •Experienced in working with Yocto-based Linux and QNX components, following Adaptive AUTOSAR standard.
        </p>
        <p>
          •Skilled in managing a testing environment using Linux 18.04 virtual machines.
        </p>
        <p>
          •Strong expertise in troubleshooting, test development and scripting, primarily using Python.
        </p>


      </TextBlock>
      <template #container>
        <ABiz :isPlaying="isPlaying" />
        <Dino :isPlaying="isPlaying" />
        <Astronaut :isPlaying="isPlaying" />
        <CoffeeMug :isPlaying="isPlaying" />
        <Shrimp v-if="$viewport.isDesktop" :isPlaying="isPlaying" />
        <Octopus v-if="$viewport.isDesktop" :isPlaying="isPlaying" />
        <ET v-if="!$viewport.isMobile" :isPlaying="isPlaying" />
        <Zen v-if="!$viewport.isMobile" :isPlaying="isPlaying" />
        <Shapes :isPlaying="isPlaying" />
      </template>
    </SceneSection>
    <SceneSection id="biz2">
      <TextBlock>
        <p class="-big">
          My first job was from 2020 to 2021. It was an
          <strong class="-purple">Internship</strong>
          @
          <a
            href="https://www.continental.com/ro-ro/"
            target="_blank"
            title="Visit Continental's website"
          >
          Continental</a
          >.
        </p>

        <p>
          •Acquired proficiency in Python by developing a Windows application tool from scratch, to streamline the work of my colleagues by automatically generating ".c" and ".h" files.
        </p>
        <p>
          •Performed Unit Tests on the project's components after an internal company course specifically focused on UnitTesting, while concurrently maintaining the tool I had created.
        </p>



      </TextBlock>
    </SceneSection>
    <SceneSection id="biz3">
      <TextBlock>
        <p>
          In my journey,
          <span class="-big">
            <span class="-purple">I've come to understand that having rich experience in both</span>, software development & testing 
            <span class="-purple">gives me a profound panoramic view of the entire </span> product development cycle.
          </span>
        </p>
      </TextBlock>
    </SceneSection>
  </div>
</template>

<script>
import ABiz from '../Characters/ABiz/ABiz.vue'
import Dino from '../Characters/Dino/Dino.vue'
import Astronaut from '../Characters/Astronaut/Astronaut.vue'
import CoffeeMug from '../Characters/CoffeeMug/CoffeeMug.vue'
import Shrimp from '../Characters/Shrimp/Shrimp.vue'
import Octopus from '../Characters/Octopus/Octopus.vue'
import ET from '../Characters/ET/ET.vue'
import Zen from '../Characters/Zen/Zen.vue'
import Shapes from '../Characters/Shapes/Shapes.vue'
import TitleSection from '../TitleSection.vue'
import TitleFunction from '../TitleFunction.vue'
import TextBlock from '../TextBlock.vue'
import SceneSection from '../SceneSection.vue'

export default {
  name: 'BizScene',
  components: {
    ABiz,
    Dino,
    Astronaut,
    CoffeeMug,
    Shrimp,
    Octopus,
    ET,
    Zen,
    Shapes,
    TitleSection,
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
.bizScene {
  #biz1 {
    .static-container {
      position: relative;
      z-index: 2;
    }

    .container {
      z-index: unset;
    }

    svg {
      overflow: visible;
    }
  }

  #abiz {
    position: absolute;
    left: -5vw;
    top: calc(50% - 15vw);
    width: 30vw;
    height: 30vw;
    z-index: 10;
    transform: rotateY(180deg);

    @media screen and (max-width: 1024px) {
      top: auto;
      bottom: 0;
    }

    @media screen and (max-width: 768px) {
      width: 50vw;
      height: 50vh;
    }
  }

  #zen {
    position: absolute;
    left: calc(100% - 30vw);
    top: 40vh;
    z-index: 20;
    width: 60vw;
    height: 80vh;
    transform: scale(2);

    @media screen and (max-width: 768px) {
      top: 65vh;
      width: 50vw;
      height: 60vh;
    }
  }

  #et {
    position: absolute;
    right: 15vw;
    top: 30vh;
    z-index: 18;
    width: 20vw;
    height: 40vw;
  }

  #dino {
    position: fixed;
    right: 0;
    bottom: -4vh;
    z-index: 919;
    width: 50vh;
    height: 50vh;
    cursor: pointer;

    @keyframes smoke {
      from {
        stroke-dasharray: 36;
        stroke-dashoffset: 72;
      }

      to {
        stroke-dasharray: 36;
        stroke-dashoffset: 0;
      }
    }

    &:hover {
      transition: filter 200ms ease-out;
      filter: brightness(1.2);

      .dino-sounds {
        opacity: 1;
        animation: smoke 1s linear infinite;
      }
    }

    @media screen and (max-width: 1024px) {
      right: -5vw;
      bottom: -20vh;
      width: 70vh;
      height: 70vh;
    }

    @media screen and (max-width: 768px) {
      width: 60vh;
      height: 60vh;
    }

    .dino-sounds {
      opacity: 0;
      stroke-dasharray: 74;
      stroke-dashoffset: 0;
    }
  }

  #astro {
    position: absolute;
    right: 0;
    bottom: 35vh;
    width: 20vw;
    height: 20vw;

    @media screen and (max-width: 568px) {
      right: 0;
      bottom: 55vh;
      width: 20vh;
      height: 20vh;
    }
  }

  #coffee {
    position: absolute;
    right: 15vw;
    top: 35vh;
    width: 5vw;
    height: 5vw;

    @media screen and (max-width: 568px) {
      right: 15vh;
      top: 20vh;
      width: 5vh;
      height: 5vh;
    }
  }

  #filomena {
    position: absolute;
    right: 40vw;
    bottom: 5vh;
    width: 10vw;
    height: 10vw;
  }

  #octo {
    position: absolute;
    right: 30vw;
    top: 60vh;
    width: 7vw;
    height: 7vw;
  }

  #open {
    position: absolute;
    left: -20vw;
    top: calc(50% - 20vw);
    z-index: -1;
    width: 40vw;
    height: 40vw;

    @media screen and (max-width: 1024px) {
      top: auto;
      bottom: -10vw;
    }

    @media screen and (max-width: 768px) {
      width: 60vw;
      height: 60vh;
    }
  }

  #smart {
    position: absolute;
    left: 5vw;
    bottom: -5vw;
    z-index: -2;
    width: 20vw;
    height: 20vw;
    filter: brightness(0.7);

    @media screen and (max-width: 1024px) {
      left: 10vw;
    }

    @media screen and (max-width: 768px) {
      width: 30vw;
      height: 30vw;
      left: 20vw;
    }
  }
}
</style>
