# 001-getting-started-with-phoenix (Sept 2021)
### Reference
https://elixircasts.io/getting-started-with-phoenix#

### Using
  * Erlang 24.0
  * Elixir 1.12.3  
  * NodeJS 14
  * Pheonix 1.5.12

### What I learnt

  1. `mix phx.new teacher` to create a project
  2.  set database secrets in `confg/dev.exs`
  3. `mix ecto.create` to create a database
  4. `mix phx.server` to run the server
  5. `mix phx.gen html Schools Post posts title:string body:text` to generate a CRUD resource page

  6. add routes `resources "/posts", PostController` to `web/router.ex` to enable the use
  7. `mix ecto.migrate` to apply the database change in the folder `priv/repo/migrations`
  8. `mix phx.routes` to see all the endpoints


### Notes for the latest version of phoenix
  
  * `mix pheonix.server` is now as `mix phx.server`
  * Context is needed for scaffolding files
  ```
  mix phx.gen.html **Accounts** User users name:string age:integer
  ```
  * File Structure: `teacher_web` is now under `lib`

### Tips

  * Set alias as follows in `.zshrc`
  ```
  alias mpn="mix phx.new"
  alias mps="mix phx.server"
  alias mec="mix ecto.create"
  alias mem="mix ecto.migrate"
  ```
