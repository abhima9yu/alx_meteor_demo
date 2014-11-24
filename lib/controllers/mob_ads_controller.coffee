@MobAdsController = BaseController.extend
  name: "MobAdsIndex"
  template: "mobAdsList"
  increment: 5
  subscriptions: ->
    @mobAdsSub = Meteor.subscribe('mobAds')
  mobAds: ->
    MobAds.find({})
  data: ->
    mobAds: @mobAds
    ready: @mobAdsSub.ready
  
