@MobAdsController = RouteController.extend
  name: "MobAdsIndex"
  template: "mobAdsList"
  increment: 5
  mobAdsLimit: ->
    parseInt(@params.postsLimit) || @increment
  subscriptions: ->
    @mobAdsSub = Meteor.subscribe('mobAds')
  mobAds: -> 
    MobAds.find({})
  data: ->
    hasMore = @mobAds().count() == @mobAdsLimit()
    mobAds: @mobAds
    ready: @mobAdsSub.ready
  
