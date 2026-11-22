# Research page changes (October 2026)

This folder starts with `_`, so Jekyll doesn't publish it.

## Structure
- `/research` is now one page with lists. It replaces the four image-link subpages (PhD, Presentations, Posters, Media).
- Sections: PhD · Journal Articles & Conference Papers · Technical Reports · Posters · Invited Talks & Panels · Media Coverage.
- Jump links at the top; each section has an anchor (`#phd`, `#papers`, `#reports`, `#posters`, `#talks`, `#media`).
- The page is text only. Images in `assets/images/pages/research/` are no longer used, but they're still in the repo.

## Academic sections
- Papers, reports, posters, and talks are reverse-numbered (newest has the highest number).
- Only the last ten years are shown (2017 onward, as of Nov 2026). Older items are kept in `research.md` inside `<!-- ... -->` comments under each list, so they're hidden but easy to restore.
  - Papers: 20 shown, 1 hidden (2016 SKB student conference paper)
  - Technical reports: 3 shown
  - Posters: 8 shown, 2 hidden (2015 and 2016 ANS Winter posters)
  - Talks: 27 shown
- Numbering counts only the items shown, so it no longer matches the CV's numbers.
- To refresh: move items that are now more than ten years old into the comment block below the list. Next due: spring 2027, when the April 2017 items turn ten.
- Added from the Oct 2026 CV: all 2025–2026 papers (incl. *Annals of Nuclear Energy* 238, DOI 10.1016/j.anucene.2026.112503), all three technical reports, the Apr 2026 lithium poster, and 2022–2024 talks.
- Links carried over from the old pages: slide PDFs, the INMM 2020 paper PDF, the WMS 2021 poster video, the ANS 2020 panel video and article, and others.
- Author names normalized to "Chirayath" and "Hogue". The CV spells them inconsistently (Chiryath/Houge), so the CV should be fixed to match.
- To check: the ANTPC 2023 link points to an ans.org `wm2023` URL, which may be the wrong conference.

## Media Coverage
- Renamed from "Media". Shows everything regardless of age (17 items, newest first, not numbered).
- Added 11 items from the BibTeX list: Verify, Nuclear Matters, WhoWhatWhy, The Kernel, Edge Effects, C&EN, NEI, Engadget, Faces of Nuclear, and two NPRE news stories, plus the NPRE newsletter item.
- Spotlight podcast: links to both Apple Podcasts and Spotify (fixed "ttps" typo in the BibTeX URL).
- No links yet: *Faces of Nuclear* (Generation Atomic, 2018) and the 2016 NPRE newsletter item.
- Climate Challengers dated September 2021 (as on the old page). The BibTeX says August.
- Author and host names left off on purpose, for consistency.

## Other files
- `research-stuff/{phd,presentation,poster,media}.md` are now redirect stubs pointing to the matching `/research#...` section, so old links still work.
- Deleted (only the old subpages used them): `_layouts/{media,poster,presentation}.html` and `_data/data/{media,posters,presentations}.yml`. Those pages were probably rendering empty anyway: the layouts read `site.data.media`, but the files lived under `_data/data/`.
- `_posts/2025-02-17-phd-general-audience-summary.md`: the link to the old PhD page now goes to `/research#phd`.
- `Gemfile.lock` added by `bundle install`.

## Local preview
- Ruby 3.3 + DevKit installed at `C:\Users\radio\Ruby33-x64`.
- Run `bundle exec jekyll serve` from the repo, then open http://localhost:4000/research.
- The Sass "@import is deprecated" warnings during builds are harmless.

# Site maintenance (November 2026)

- **Bluesky feed script** pinned to `bsky-embed@0.3.0` with an integrity hash. Before, it loaded whatever version was newest. To update, change the version and recompute the `integrity` hash.
- **jQuery** updated from 3.3.1 to 3.7.1 (`assets/js/jquery-3.7.1.min.js`, checksum matches the official release). The 2019 state-electricity post no longer loads jQuery 1.11.2/3.2.1; its dropdown uses plain JavaScript.
- **Google Analytics** turned off. The old `UA-` ID had been dead since July 2023. To turn it back on, set `ga_analytics` in `_config.yml` to a GA4 ID (`G-...`).
- **Sitemap** fixed: `_config.yml` used `plugins_dir:` instead of `plugins:`, so GitHub Pages never loaded `jekyll-sitemap`.
- **Tags**: GitHub Pages doesn't support `jekyll-tagsgenerator`, so every `/tag/...` link was a 404. There's now one `/tags` page with a section per tag, and all tag links point to `/tags#<tag>`.
- **Twitter** sidebar timeline and contact-page buttons removed; the contact page links to Bluesky instead. Tweets embedded in two 2019 posts were left as is (the quoted text still shows).
- **Contact form** removed. Formspree's old email-based address (`formspree.io/<email>`) returns 404, so the form was broken. `thank-you.html` (the page the form redirected to) is gone. The personal email address was also removed from the contact page and from `_config.yml`, so the contact page now only links to Bluesky.
- `production_url` changed to https.
