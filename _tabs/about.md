---
# the default layout is 'page'
icon: fas fa-info-circle
order: 4
---

<style>
.about-profile {
  --about-accent: #59786b;
  display: flow-root;
  font-family: "Palatino Linotype", "Book Antiqua", Palatino, Georgia, serif;
  font-size: 1.08rem;
  line-height: 1.85;
  color: var(--text-color);
}
.about-profile .about-photo {
  float: right;
  width: 42%;
  max-width: 320px;
  margin: 0.4rem 0 1.6rem 2rem;
  padding: 7px;
  border: 1px solid rgba(128, 128, 128, 0.25);
  border-radius: 12px;
  background: var(--main-bg);
  box-shadow: 0 8px 24px rgba(0, 0, 0, 0.09);
}
.about-profile .about-photo img {
  display: block;
  width: 100%;
  height: auto;
  border-radius: 6px;
  margin: 0;
}
.about-profile .about-eyebrow {
  margin: 0 0 0.7rem;
  font-family: inherit;
  font-size: 0.75rem;
  font-weight: 600;
  letter-spacing: 0.16em;
  text-transform: uppercase;
  color: var(--about-accent);
}
.about-profile h2 {
  margin: 0 0 1.4rem;
  padding: 0;
  font-family: inherit;
  font-size: clamp(1.8rem, 3vw, 2.5rem);
  font-weight: 400;
  line-height: 1.2;
  letter-spacing: -0.025em;
}
.about-profile p { margin: 0 0 1.35rem; }
.about-profile .about-closing {
  clear: both;
  padding-top: 1.25rem;
  border-top: 1px solid rgba(128, 128, 128, 0.22);
  font-size: 1rem;
}
[data-mode="dark"] .about-profile { --about-accent: #a4c3b5; }
@media (max-width: 640px) {
  .about-profile { font-size: 1.025rem; line-height: 1.8; }
  .about-profile .about-photo {
    float: none;
    width: 100%;
    max-width: 360px;
    box-sizing: border-box;
    margin: 0 0 1.7rem auto;
  }
}
</style>

<div class="about-profile" markdown="1">

<figure class="about-photo">
  <img src="{{ '/assets/about/jiale-xuan.jpg' | relative_url }}" width="1917" height="1279" alt="Jiale Xuan outdoors among trees" />
</figure>

<p class="about-eyebrow">Condensed Matter Physics</p>

## Hi, I'm Jiale Xuan

Welcome to my personal website! I am interested in quantum many-body problems in condensed matter physics, particularly flat-band systems, topological superconductivity, and the interplay between interactions and quantum geometry. I enjoy combining analytical methods with numerical calculations to understand the physics of these systems.

This website is a record of what I am learning and exploring. It brings together reading notes, group meeting presentations, summer school notes, and experiments with computational methods. Topics include bosonization, the renormalization group, Kitaev chains, DMRG, and variational Monte Carlo. Writing out derivations and calculations helps me clarify my understanding and identify the questions I still need to work through.

These notes are a work in progress and may contain mistakes. I hope they will be useful to others with similar interests, and I welcome questions, discussions, and corrections.
{: .about-closing }

</div>
