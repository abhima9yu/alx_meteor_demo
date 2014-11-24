Meteor.publish 'mob_ads', (options) ->
  MobAds.find({}, options)
