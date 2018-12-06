defmodule TestPhxWeb.RootView do
  use TestPhxWeb, :view

  def render("index.json", %{}) do
    %{
      data: todo_json
    }
  end

  def todo_json do
    %{
      title: 1,
      description: 2,
      inserted_at: 3,
      updated_at: 4
    }
  end

end
