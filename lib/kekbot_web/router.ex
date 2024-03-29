defmodule KekbotWeb.Router do
  use KekbotWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", KekbotWeb do
    pipe_through :api

    get "/", Controller, :hello
    post "/", Controller, :handle
  end
end
