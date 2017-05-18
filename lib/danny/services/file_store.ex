defmodule Danny.Services.FileStore do
  import Logger, only: [info: 1]

  @data_dir Application.get_env(:danny, :data_dir)

  def store(%Plug.Upload{} = upload) do
    info "storing upload #{inspect upload}"
    # TODO: store content type and original filename
    File.cp(upload.path, Path.join(@data_dir, upload.filename))
  end
end
