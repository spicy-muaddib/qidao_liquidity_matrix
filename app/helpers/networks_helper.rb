module NetworksHelper

  def bc_link(network)
    if network["harmony.one"]
      network.chomp("/address/")
    else
      network.chomp("/token/")
    end
  end

  def sort_network_link(column:, label:)
    if column == "symbol"
      link_to(label, network_path(column: column, direction: next_direction), title: "Sort tokens")
    elsif column != "symbol"
      if column == params[:column]
        link_to(label, network_path(column: column, direction: next_direction), title: "Sort tokens")
      else
        link_to(label, network_path(column: column, direction: 'desc'), title: "Sort tokens")
      end
    else
      link_to(label, network_path(column: column, direction: 'desc'), title: "Sort tokens")
    end
  end

end
