class Item
  def initialize(item_name, quantity)
    @item_name = item_name
    @quantity = quantity
  end

  def interests
    @array_to_flash = %w(
    Aikido
    Web\ development
    Being\ a\ Dad
    Travel
    Scuba\ Diving
    Teaching
    Helping\ people\ be\ the\ best\ they\ can\ be
    Business
    Building\ things
    Learning
    Woodwork\ -\ I\ know,\ weird...
    Arduino
    Writing
    Marketing
    Politics
    Current\ Affairs
    Doing\ the\ right\ thing
    Human\ Rights
    Photography
    Design
    Bringing\ order\ to\ chaos
    C++
    Basic\ electronics
    JavaScript
    Ruby
    Python
    HTML
    CSS
    Backbone.js
    Ruby\ on\ Rails
    Sinatra
    Reading
    Buddhism
    Mindfulness
    Sinclair\ ZX81\ with\ 16k\ RAM
    Blue\ Screen\ of\ Death
    Autonomy\ with\ structure
    If\ you\ bang\ on\ all\ the\ time\ about\ how\ authentic\ you\ are\ I\ will\ question\ that
    Self\ improvement
    Fluent,\ slightly\ 19th\ century\ and\ rusty\ French
    Fluent,\ slightly\ 18th\ and\ rusty\ German
    Queen's\ College,\ University\ of\ Oxford
    First\ Class\ Honours,\ French\ and\ German
    Master\ of\ Studies,\ Modern\ and\ Medieval\ Literature
    First\ year\ of\ a\ PhD
    Qualified\ Junior\ Reporter,\ National\ Council\ for\ the\ Training\ of\ Journalists
    Sales
    Marketing
    Business\ strategy
    Account\ development
    Account\ management
    )
  end

  def show
    interests
  end

end

Item.new("telly", 3).show
Item.new("fridge", 20).show
