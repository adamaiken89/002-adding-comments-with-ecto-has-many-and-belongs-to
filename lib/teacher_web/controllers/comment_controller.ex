defmodule TeacherWeb.CommentController do
  use TeacherWeb, :controller

  alias Teacher.Blogs
  alias Teacher.Blogs.{Post, Comment}
  alias Teacher.Repo

  def create(conn, %{"comment" => comment_params, "post_id" => post_id}) do
    post = Blogs.get_post!(post_id)
    comment_changeset = post
      |> Ecto.build_assoc(:comments)
      |> Comment.changeset(comment_params)
    Repo.insert!(comment_changeset)

    conn
    |> put_flash(:info, "Comment created successfully.")
    |> redirect(to: Routes.post_path(conn, :show, post))
  end
end
