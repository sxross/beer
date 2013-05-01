class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)

    #@search_controller = SearchController.alloc.initWithNibName(nil, bundle:nil)
    #@venue_controller  = VenueController.alloc.initWithNibName(nil, bundle:nil)
    @frontpage_controller  = FrontpageController.alloc.initWithNibName(nil, bundle:nil)
    @navigation_controller = UINavigationController.alloc.initWithRootViewController( @frontpage_controller )

    @window.rootViewController = @navigation_controller
    @window.makeKeyAndVisible
    true
  end
end
