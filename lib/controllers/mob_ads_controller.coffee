@MobAdsController = BaseController.extend
  template: "mobAdsList"
  increment: 5
  subscriptions: ->
    @mobAdsSub = Meteor.subscribe('activeMobAds')
  mobAds: ->
    MobAds.find({})
  data: ->
    mobAds: @mobAds
    ready: @mobAdsSub.ready

@MobAdController = BaseController.extend
  template: "mob_ad_item"
  waitOn: ->
    Meteor.subscribe('singleMobAd', @params._id)
  data: ->
    MobAds.findOne(@params._id)


    
