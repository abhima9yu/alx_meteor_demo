Meteor.publish 'active_mob_ads', (options) ->
  MobAds.find({}, options)
