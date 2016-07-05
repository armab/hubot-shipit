# Description:
#   Rodent Motivation
#
#   Set the environment variable HUBOT_SHIP_EXTRA_SQUIRRELS (to anything)
#   for additional motivation
#
# Dependencies:
#   None
#
# Configuration:
#   HUBOT_SHIP_EXTRA_SQUIRRELS
#
# Commands:
#   ship it - Display a motivation squirrel
#
# Author:
#   maddox

squirrels = [
  "https://shipitsquirrel.github.io/images/ship%20it%20squirrel.png",
  "https://shipitsquirrel.github.io/images/squirrel.png",
  "https://28.media.tumblr.com/tumblr_lybw63nzPp1r5bvcto1_500.jpg",
  "https://i.imgur.com/DPVM1.png",
  "https://d2f8dzk2mhcqts.cloudfront.net/0772_PEW_Roundup/09_Squirrel.jpg",
  "https://www.cybersalt.org/images/funnypictures/s/supersquirrel.jpg",
  "https://www.zmescience.com/wp-content/uploads/2010/09/squirrel.jpg",
  "https://dl.dropboxusercontent.com/u/602885/github/sniper-squirrel.jpg",
  "https://1.bp.blogspot.com/_v0neUj-VDa4/TFBEbqFQcII/AAAAAAAAFBU/E8kPNmF1h1E/s640/squirrelbacca-thumb.jpg",
  "https://dl.dropboxusercontent.com/u/602885/github/soldier-squirrel.jpg",
  "https://dl.dropboxusercontent.com/u/602885/github/squirrelmobster.jpeg",
  "https://24.media.tumblr.com/tumblr_lz4u84XJPc1qfu5wgo1_1280.jpg",
  "https://i.imgur.com/0CtP54A.png",
  "https://i.imgur.com/rfvkwhb.jpg",
  "https://i.imgur.com/vN08cO9.png",
  "https://cdn.meme.am/instances/500x/69257601.jpg",
  "https://i.imgur.com/yINiFE5.jpg",
  "https://i.imgur.com/taEliv1.png",
  "https://camo.githubusercontent.com/dfd5b1e5bd069d89d70ef0416a9fe41f0c7a57d4/687474703a2f2f692e696d6775722e636f6d2f73374d52672e6a7067",
]

module.exports = (robot) ->

  # Enable a looser regex if environment variable is set
  if process.env.HUBOT_SHIP_EXTRA_SQUIRRELS
    regex = /\bship(ping|z|s|ped)?\s*it\b/i
  else
    regex = /\bship\s*it\b/i

  robot.hear regex, (msg) ->
    msg.send msg.random squirrels
