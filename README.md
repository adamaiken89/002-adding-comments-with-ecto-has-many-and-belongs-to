# 002-adding-comments-with-ecto-has-many-and-belongs-to (Sept 2021)
### Reference
https://elixircasts.io/adding-comments-with-ecto-associations

### Using
  * Erlang 24.0
  * Elixir 1.12.3  
  * NodeJS 14
  * Pheonix 1.5.12

### What I learnt

  1. `mix phx.gen.schema Comment comments body:text post_id:references:posts` to create a schema
  2. All `controllers` in Phoenix are in `singular` while that in rails are usually in plurals.
  3. Have to define your own `Context`, here is `Blogs` for data manipulations
  4. Rely on module `Blogs` to do the handlers


### Notes for the latest version of phoenix
  
  * `mix pheonix.gen.model` is now as `mix phx.gen.schema`
  * Since controllers and views are in `teacher_web`, they are under the module of `TeacherWeb`, not `Teacher`
  * Similarly, we load `use TeacherWeb :controller`, instead `use Teacher.Web :controller`
  * In the past, the context has defined as `Repo`, now it has to be configurable.
 