@SessionsController = RouteController.extend
  name: "Session"
  template: "login"
  onBeforeAction: (pause) ->
    if Meteor.user()
      Router.go("home")
    else
      @render("login")
