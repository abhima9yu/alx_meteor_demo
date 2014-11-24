

Router.configure
  layoutTemplate: 'layout'
  loadingTemplate: 'loading'
  notFoundTemplate: 'notFound'

Router.map ->
  @route 'home',
    path: "/"
    controller: 'MobAdsController'

  @route 'login',
    path: "/login"
    controller: 'SessionsController'

  @route 'mobAdShow',
    path: "/mobAd/:_id"
    controller: 'MobAdController'
    

requireLogin = ->
  if not Meteor.user()
    if Meteor.loggingIn()
      @render @loadingTemplate
    else
      Router.go('login')
  else
    @next()


Router.onBeforeAction requireLogin, {only: ['home']}



