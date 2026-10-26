---
# the default layout is 'page'
title: About the Author
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
  box-sizing: border-box;
  padding: 3px;
  border: 1px solid rgba(128, 128, 128, 0.16);
  border-radius: 10px;
  background: var(--main-bg);
  box-shadow: 0 0 14px rgba(0, 0, 0, 0.045);
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
.about-travel {
  clear: both;
  margin-top: 3rem;
  padding-top: 2rem;
  border-top: 1px solid rgba(128, 128, 128, 0.22);
  font-family: "Palatino Linotype", "Book Antiqua", Palatino, Georgia, serif;
  color: var(--text-color);
}
.about-travel h2 {
  margin: 0 0 1.8rem;
  font-family: inherit;
  font-size: 1.9rem;
  font-weight: 400;
}
.about-travel .travel-entry {
  display: grid;
  grid-template-columns: minmax(0, 1fr) minmax(0, 2fr);
  align-items: start;
  gap: 1.5rem;
  padding: 1.8rem 0;
  border-bottom: 1px solid rgba(128, 128, 128, 0.16);
}
.about-travel .travel-entry:first-of-type { padding-top: 0; }
.about-travel .travel-entry:last-child { border-bottom: 0; }
.about-travel h3 {
  margin: 0 0 0.6rem;
  font-family: inherit;
  font-size: 1.35rem;
  font-weight: 400;
  line-height: 1.3;
}
.about-travel .travel-date {
  margin: 0 0 0.6rem;
  font-size: 0.75rem;
  letter-spacing: 0.1em;
  text-transform: uppercase;
  color: var(--text-muted-color, #888);
}
.about-travel .travel-description {
  margin: 0;
  font-size: 1rem;
  line-height: 1.75;
}
.about-travel .travel-photos {
  display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 0.7rem;
}
.about-travel .travel-frame {
  margin: 0;
  padding: 3px;
  min-width: 0;
  border: 1px solid rgba(128, 128, 128, 0.16);
  border-radius: 9px;
  box-shadow: 0 0 12px rgba(0, 0, 0, 0.035);
}
.about-travel .travel-frame img {
  display: block;
  width: 100%;
  height: auto;
  aspect-ratio: 4 / 3;
  object-fit: cover;
  margin: 0;
  border-radius: 5px;
}
.about-travel .travel-placeholder {
  display: grid;
  place-items: center;
  aspect-ratio: 4 / 3;
  border-radius: 5px;
  background: linear-gradient(135deg, rgba(89, 120, 107, 0.09), rgba(128, 128, 128, 0.04));
  color: var(--text-muted-color, #888);
  font-size: 0.85rem;
}
@media (max-width: 640px) {
  .about-travel .travel-entry { grid-template-columns: 1fr; gap: 1rem; }
  .about-travel { margin-top: 2rem; }
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
  <img src="https://54749110.github.io/assets/about/jiale-xuan.jpg" width="1917" height="1279" alt="Jiale Xuan outdoors among trees" />
</figure>

<p class="about-eyebrow">Condensed Matter Physics</p>

## Hi, I'm Jiale Xuan

Welcome to my personal website! I am interested in quantum many-body problems in condensed matter physics, such as flat-band systems and the interplay between interactions and quantum geometry. Understanding strongly correlated physics has long been a central goal of mine. I enjoy combining analytical methods with numerical calculations to understand the physics of these systems.

This website is a record of what I am learning and exploring. It also serves as my personal ‘cloud archive’: a place to keep these materials within easy reach, so I can pull them up and share them whenever a discussion calls for them. If you happen to come across this collection and find something useful, I would be all the happier for it.

{: .about-closing }

</div>

<section class="about-travel" aria-labelledby="recent-travels">
  <h2 id="recent-travels">Recent Travels</h2>

  <!-- Duplicate a travel-entry for each trip. Replace placeholders with img tags using full image URLs. -->
  <article class="travel-entry">
    <div class="travel-copy">
      <p class="travel-date">January 2024</p>
      <h3>Mount Tai &amp; Jinan</h3>
      <p class="travel-description">A winter trip to Mount Tai and Jinan, with mountain views under clear January skies.</p>
    </div>
    <div class="travel-photos">
      <figure class="travel-frame"><img src="https://54749110.github.io/assets/about/travel/2024-01-mount-tai-portrait.jpg" alt="At the inscribed rocks on Mount Tai, January 2024" style="aspect-ratio: 3 / 4; object-fit: contain;" loading="lazy" /></figure>
      <figure class="travel-frame"><img src="https://54749110.github.io/assets/about/travel/2024-01-mount-tai-view.jpg" alt="Cable cars and mountain views beneath a clear winter sky" style="aspect-ratio: 3 / 4; object-fit: contain;" loading="lazy" /></figure>
    </div>
  </article>

  <article class="travel-entry">
    <div class="travel-copy">
      <p class="travel-date">July 2024</p>
      <h3>Liaoning</h3>
      <p class="travel-description">A summer visit to a classmate's hometown in rural Liaoning, spending time with friends and exploring the countryside.</p>
    </div>
    <div class="travel-photos">
      <figure class="travel-frame"><img src="https://54749110.github.io/assets/about/travel/2024-07-liaoning-walk.jpg" alt="Friends walking along a tree-lined path beside the water in Liaoning" loading="lazy" /></figure>
      <figure class="travel-frame"><img src="https://54749110.github.io/assets/about/travel/2024-07-liaoning-station.jpg" alt="Niuheliang railway station beneath a blue summer sky" loading="lazy" /></figure>
    </div>
  </article>
  <article class="travel-entry">
    <div class="travel-copy">
      <p class="travel-date">August 2024</p>
      <h3>Beigu Mountain, Zhenjiang</h3>
      <p class="travel-description">A visit to Beigu Mountain in Zhenjiang, taking in the waterside views and the inscriptions along the way.</p>
    </div>
    <div class="travel-photos">
      <figure class="travel-frame"><img src="https://54749110.github.io/assets/about/travel/2024-08-zhenjiang-view.jpg" alt="Waterside views of Zhenjiang from Beigu Mountain" loading="lazy" /></figure>
      <figure class="travel-frame"><img src="https://54749110.github.io/assets/about/travel/2024-08-beigu-inscription.jpg" alt="Calligraphy inscription at Beigu Mountain in warm sunlight" loading="lazy" /></figure>
    </div>
  </article>

  <article class="travel-entry">
    <div class="travel-copy">
      <p class="travel-date">April 2025</p>
      <h3>Hangzhou</h3>
      <p class="travel-description">A trip to Hangzhou to attend the 2025 Computational Condensed Matter Summit.</p>
    </div>
    <div class="travel-photos" style="align-items: start;">
      <figure class="travel-frame"><img src="https://54749110.github.io/assets/about/travel/2025-04-hangzhou-city.jpg" alt="Hangzhou rooftops and skyline at dusk" loading="lazy" /></figure>
      <figure class="travel-frame"><img src="https://54749110.github.io/assets/about/travel/2025-04-hangzhou-night.jpg" alt="Hangzhou city streets and illuminated towers at night" style="aspect-ratio: 3 / 4; object-fit: contain;" loading="lazy" /></figure>
    </div>
  </article>

  <article class="travel-entry">
    <div class="travel-copy">
      <p class="travel-date">August 2025</p>
      <h3>Datong &amp; Beijing</h3>
      <p class="travel-description">A summer trip to Datong and Beijing, including a visit to the Ming Tombs.</p>
    </div>
    <div class="travel-photos">
      <figure class="travel-frame"><img src="https://54749110.github.io/assets/about/travel/2025-08-ming-tombs.jpg" alt="The Ming Tombs in Beijing, framed by green hills and pine branches" loading="lazy" /></figure>
      <figure class="travel-frame"><img src="https://54749110.github.io/assets/about/travel/2025-08-datong-night.jpg" alt="A hot-air balloon above illuminated buildings in Datong at night" loading="lazy" /></figure>
    </div>
  </article>

  <article class="travel-entry">
    <div class="travel-copy">
      <p class="travel-date">October 2025</p>
      <h3>Sheshan Observatory</h3>
      <p class="travel-description">An autumn visit to Sheshan and its observatory, with views across the surrounding hills.</p>
    </div>
    <div class="travel-photos" style="align-items: start;">
      <figure class="travel-frame"><img src="https://54749110.github.io/assets/about/travel/2025-10-sheshan-portrait.jpg" alt="A portrait on stone steps beside a red-brick building at Sheshan" style="aspect-ratio: 3 / 4; object-fit: contain;" loading="lazy" /></figure>
      <figure class="travel-frame"><img src="https://54749110.github.io/assets/about/travel/2025-10-sheshan-observatory.jpg" alt="Sheshan Observatory dome overlooking the surrounding hills" loading="lazy" /></figure>
    </div>
  </article>

  <article class="travel-entry">
    <div class="travel-copy">
      <p class="travel-date">March 2026</p>
      <h3>Denver, USA</h3>
      <p class="travel-description">A trip to Denver, USA, to attend the 2026 APS March Meeting.</p>
    </div>
    <div class="travel-photos">
      <figure class="travel-frame"><img src="https://54749110.github.io/assets/about/travel/2026-03-denver-aps.jpg" alt="At the lectern during the 2026 APS March Meeting" style="aspect-ratio: 3 / 4; object-fit: contain;" loading="lazy" /></figure>
      <figure class="travel-frame"><img src="https://54749110.github.io/assets/about/travel/2026-03-denver-city.jpg" alt="Denver city views under a clear blue sky" style="aspect-ratio: 3 / 4; object-fit: contain;" loading="lazy" /></figure>
    </div>
  </article>

  <article class="travel-entry">
    <div class="travel-copy">
      <p class="travel-date">April 2026</p>
      <h3>Beijing &amp; Mutianyu</h3>
      <p class="travel-description">A trip to Beijing to attend the 2026 Computational Condensed Matter Summit, including a visit to the Great Wall at Mutianyu.</p>
    </div>
    <div class="travel-photos">
      <figure class="travel-frame"><img src="https://54749110.github.io/assets/about/travel/2026-04-mutianyu.jpg" alt="The Great Wall at Mutianyu winding across wooded hills in spring" style="aspect-ratio: 3 / 4; object-fit: contain;" loading="lazy" /></figure>
      <figure class="travel-frame"><img src="https://54749110.github.io/assets/about/travel/2026-04-beijing-lakeside.jpg" alt="Visitors enjoying a lakeside sunset in Beijing" style="aspect-ratio: 3 / 4; object-fit: contain;" loading="lazy" /></figure>
    </div>
  </article>

  <article class="travel-entry">
    <div class="travel-copy">
      <p class="travel-date">July 2026</p>
      <h3>Hong Kong</h3>
      <p class="travel-description">A visit to Hong Kong for academic exchange, with a hike up Victoria Peak along misty, tree-lined paths.</p>
    </div>
    <div class="travel-photos" style="align-items: start;">
      <figure class="travel-frame"><img src="https://54749110.github.io/assets/about/travel/2026-07-hong-kong-hike.jpg" alt="Hiking up Victoria Peak on misty stone steps surrounded by greenery" style="aspect-ratio: 3 / 4; object-fit: contain;" loading="lazy" /></figure>
      <figure class="travel-frame"><img src="https://54749110.github.io/assets/about/travel/2026-07-victoria-peak-view.jpg" alt="Hong Kong harbour and skyline seen from Victoria Peak beneath cloudy skies" loading="lazy" /></figure>
    </div>
  </article>

  <article class="travel-entry">
    <div class="travel-copy">
      <p class="travel-date">October 2026</p>
      <h3>W&uuml;rzburg, Germany</h3>
      <p class="travel-description">A trip to W&uuml;rzburg, Germany, to attend the ALF meeting.</p>
    </div>
    <div class="travel-photos">
      <figure class="travel-frame"><img src="https://54749110.github.io/assets/about/travel/2026-10-germany-portrait.jpg" alt="A portrait overlooking red rooftops during a trip to Germany" style="aspect-ratio: 3 / 4; object-fit: contain;" loading="lazy" /></figure>
      <figure class="travel-frame"><img src="https://54749110.github.io/assets/about/travel/2026-10-wuerzburg-view.jpg" alt="W&uuml;rzburg rooftops, church towers, and a bridge across the river" style="aspect-ratio: 3 / 4; object-fit: contain;" loading="lazy" /></figure>
    </div>
  </article>
</section>
