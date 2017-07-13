defmodule Contactapp.Repo do
  use Ecto.Repo, otp_app: :contactapp

  use Scrivener, page_size: 9
end
