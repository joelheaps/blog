+++
title = "A good day to fly"
date = "2026-01-19T02:00:00-00:00"
draft = false
tags = ["tech", "flying", "projects"]
+++
I have a bad habit of starting projects that don't get finished.  It happens with house work, and with hobbies, with exercising...the list goes on.  We're having a baby soon though, and I'll have a rare break from work obligations.  Between diaper changes and naps, I'm hoping the break from routine also gives me a chance to break the norm and actually see a project through: a new little aviation weather tool.

I'm a developer by profession, but have a background in aviation and fly small planes in my free time.  Beside those two, I am also weather geek, and I've always been entertained by projects that pull these three worlds together.  So, I've decided to build a little weather website,  one that compares weather forecasts against a pilot's "personal minimums" -- that is, the worst conditions a pilot would be comfortable or safe operating an airplane in.

It's easy enough to read a forecast and deduce whether the weather meets or exceeds minimums, but tools today don't really cater to that use case, and I think I can do better.  There's something satisfying about a nice color-coded chart to quickly picture when the good and bad times are to take a plane up.

This little project will also give me a chance to play with the output from NOAA's relatively new [National Blend of Models (NBM)](https://vlab.noaa.gov/web/mdl/nbm) forecast products.  Having used existing tools that present data from the NBM predecessor, [Model Output Statistics (MOS)](https://vlab.noaa.gov/web/mdl/mos) (which has both been useful and decently accurate), I'm excited to test out the new version.  MOS, and now NBM, are nice in that:
- They cover aviation-specific parameters (cloud ceilings is the main one that comes to mind; this isn't always available on commercial forecasts), for both airports that do and do not receive more [official Terminal Area Forecasts (TAFs)](https://www.faa.gov/data_research/aviation/taf) from the FAA.  TAFs are great when available, offering nuance that only a human meteorologist can interject, but I and many others fly to and from airports that don't have them.  (Plus, using contiguous weather model forecasts allows for, perhaps, a better depiction of trends over time).
- The data is public domain.

I'm keeping things scoped to the US for now (as part of the motivation is to explore these national forecast products), but if things pan out, I could see myself exploring Canadian and Australian support in the future, as well as providing real-time weather.

But...baby first!  We'll see where this project lands. 🛬
