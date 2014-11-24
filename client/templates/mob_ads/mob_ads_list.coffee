Meteor.subscribe("mob_ads")

Template.mobAdsList.helpers
  mobAds: ->
    this.mobAds()

