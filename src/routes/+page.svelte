<script lang="ts">
  import { fly } from "svelte/transition";
  const words = "I don't know what I'm doing, but this is really awesome".split(
    " "
  );
  let show = false;
</script>

<div
  class="card"
  on:mouseenter={() => {
    show = true;
  }}
  on:mouseleave={() => {
    show = false;
  }}
>
  <div class="card-content">
    <h1 class="card-title">Hello world!</h1>
    <h3 class="card-subtitle">
      {#if show}
        {#each words as word, index}
          <span
            transition:fly={{ delay: 40 * index, x: 0, y: 10 }}
            class="card-subtitle-word"
            style="--index:{index};">{word + " "}</span
          >
        {/each}
      {/if}
    </h3>
  </div>
</div>

<style>
  .card {
    aspect-ratio: 1/1.6;
    border: 0.5vmin solid var(--border);
    /* width: 56vmin; */
    /* cursor: pointer; */
    position: relative;
  }

  .card:before {
    background: linear-gradient(
      130deg,
      transparent 0% 33%,
      #170676bf 66%,
      #df0f0fa1 100%
    );
    content: "";
    height: 100%;
    width: 100%;
    left: 0;
    position: absolute;
    top: 0;
    transition: background-position 350ms ease, transform 350ms ease;
    background-size: 300% 300%;
    z-index: 0;
    background-position: 0% 0%;
  }
  .card:hover:before {
    background-position: 100% 100%;
    transform: scale(1.08, 1.03);
  }

  .card-content {
    height: calc(100% - 10vmin);
    padding: 5vmin;
    position: relative;
    width: calc(100% - 10vmin);
    background: radial-gradient(rgba(255, 255, 255, 0.2) 8%, transparent 8%);
    background-position: 0 0;
    background-size: 5vmin 5vmin;
    transition: background-position 350ms ease;
  }

  .card:hover > .card-content {
    background-position: -10% 0;
  }

  .card-title,
  .card-subtitle {
    color: white;
    font-family: "Ubuntu", sans-serif;
    z-index: 2;
    font-weight: 400;
    margin: 0;
  }
  .card-title {
    font-size: 6vmin;
  }
  .card-subtitle {
    font-size: 3vmin;
    margin-top: 2vmin;
  }

  .card-subtitle-word {
    display: inline-block;
    margin: 0vmin 0.3vmin;
    position: relative;
    white-space: pre;
  }
</style>
