class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    seed_data
    
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
  
  def seed_data
    Beer.create(:location => {latitude: 59.923469, longitude: 10.758304}, name: 'Parkteateret',   url: 'http://parkteateret.no') #, '10:00', '20:00'),
    Beer.create(:location => {latitude: 59.923474, longitude: 10.757948}, name: 'Cafe Fontes AS', url: 'http://cafefontes.no') #,   '11:00', '22:00'),
    Beer.create(:location => {latitude: 59.923489, longitude: 10.753748}, name: 'DAQOTA',         url: 'http://cafefontes.no') #,   '12:00', '23:00')
  end
end
