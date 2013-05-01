class FrontpageController < UIViewController
  def viewDidLoad
    super

    self.title = "Frontpage"

    self.view.backgroundColor = UIColor.blueColor

    @search_controller = SearchController.alloc.initWithNibName(nil, bundle:nil)
    @venue_controller  = VenueController.alloc.initWithNibName(nil, bundle:nil)

    # This does not work:
    #self.view.addSubview(@search_controller)
    #self.view.addSubview(@venue_controller)
    self.navigationController.pushViewController(@search_controller, animated:true)
    self.navigationController.pushViewController(@venue_controller, animated:true)

  end
end
