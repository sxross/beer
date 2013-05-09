class AppDelegate

  Parse.setApplicationId("#{ENV['PARSE_APPLICATION_ID']}, clientKey:#{ENV['PARSE_CLIENT_KEY']}")
  
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    tabbar = UITabBarController.alloc.init
    tabbar.viewControllers = [BeerMapController.alloc.init, BeerListController.alloc.init]
    tabbar.selectedIndex = 0
    @window.rootViewController = UINavigationController.alloc.initWithRootViewController(tabbar)
    @window.rootViewController.wantsFullScreenLayout = true
    @window.makeKeyAndVisible
    true
  end

  def beer_details_controller
    @beer_details_controller ||= BeerDetailsController.alloc.init
  end
end
