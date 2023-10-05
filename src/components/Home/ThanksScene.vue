<template>
  <SceneSection id="thanks">
    <TextBlock>
      <Potion isPlaying />

      <div class="madeof">
        <p class="-comment">// Made with</p>

        <div class="cols">
          <ul class="col">
            <li class="ico">(){&lt;/&gt;}</li>
            <li>Vue 2</li>
            <li>GSAP 2</li>
            <li>ScrollMagic</li>
            <li>Photoshop</li>
            <li>Illustrator</li>
          </ul>
          <ul class="col">
            <li class="ico">~</li>
            <li>+62 cups of coffee</li>
            <li>Endless references</li>
            <li>2 easter eggs</li>
          </ul>
          <ul class="col songs">
            <li class="ico">
              <MusicIcon />
            </li>
            <li v-for="song in SONGS" :key="song.id">
              <a
                :href="SPOTIFY_TRACK + song.id"
                :title="`Listen to ${song.label}`"
                target="_blank"
                >{{ song.label }}</a
              >
            </li>
          </ul>
        </div>
      </div>
    </TextBlock>
  </SceneSection>
</template>

<script>
import MusicIcon from '../Icon/MusicIcon.vue'
import Potion from '../Characters/Potion/Potion.vue'
import TextBlock from '../TextBlock.vue'
import SceneSection from '../SceneSection.vue'

const SPOTIFY_TRACK = 'https://open.spotify.com/track/'
const SONGS = [
  {
    id: '6ToM0uwxtPKo9CMpbPGYvM',
    label: 'The Doors',
  },

  {
    id: '4vpeKl0vMGdAXpZiQB2Dtd',
    label: 'Jefferson Airplane',
  },

  {
    id: '0Pie5DFAHHxpkONFUsAI6s',
    label: 'Nirvana',
  },

  {
    id: '1jzDzZWeSDBg5fhNc3tczV',
    label: 'Black Sabbath',
  },

  {
    id: '7Gx2q0ueNwvDp2BOZYGCMO',
    label: 'Pink Floyd',
  },

  {
    id: '3qrTtyItm5TPVpbZ3FI39C',
    label: 'Synapson, Bonga',
  },

  {
    id: '3oRaLG3ZDqXNN4BXhBClrY',
    label: 'Jose Larralde',
  },

  {
    id: '4QDVTIUxXCZkSKTqhHSSWZ',
    label: '<?????????????>',
  },
]

export default {
  name: 'ThanksScene',
  components: { TextBlock, SceneSection, Potion, MusicIcon },
  props: {
    isPlaying: Boolean,
  },
  data() {
    return {
      SPOTIFY_TRACK,
      SONGS,
    }
  },
}
</script>

<style lang="scss">
#thanks {
  position: relative;

  &:before {
    content: '';
    display: block;
    position: absolute;
    top: 0;
    left: 0;
    z-index: -1;
    width: 100%;
    height: 100%;
    opacity: 0.3;
    mask-image: linear-gradient(to bottom, transparent 0, black 10vh);
    background: url('../../assets/goya.png') no-repeat 0 bottom;
    background-size: auto 100%;
  }

  .madeof {
    margin-bottom: 20vh;
  }

  .-big {
    a:hover {
      filter: brightness(1.4);
    }
  }

  .cols {
    display: grid;
    grid-template: 1fr / repeat(auto-fit, minmax(150px, auto));
    grid-gap: 2rem;
    color: var(--purple);
    font-size: 1rem;

    li.ico {
      min-height: 0;
      margin-bottom: 2rem;
    }

    svg {
      width: 1rem;
      height: 1rem;
      fill: var(--purple);
    }
  }

  a {
    text-decoration: none;
    display: block;
    min-height: 2rem;
  }

  ul,
  li {
    list-style: none;
    margin: 0;
    padding: 0;
    position: relative;
    line-height: 1.5em;
  }

  .songs {
    li {
      float: left;
      clear: left;
      transition: all 300ms ease-out;
      cursor: pointer;

      &.ico {
        display: block;
      }

      a {
        color: var(--purple);
      }

      a:hover {
        color: var(--light);
      }
    }
  }

  @media screen and (max-width: 768px) {
    li {
      margin-bottom: 0.5rem;
    }
  }
}
</style>
