Meteor.publish 'activeMobAds', (options) ->
  MobAds.find({}, options)

Meteor.publish 'singleMobAd', (id) ->
  check(id, String)
  MobAds.find(id)
