defmodule Danny.Web.FileController do
  use Danny.Web, :controller
  alias Danny.Services.FileStore

  def create(conn, %{"file" => %{"upload" => upload}}) do
    FileStore.store(upload)
    text conn, "Done"
  end

end
