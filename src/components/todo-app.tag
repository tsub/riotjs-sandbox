<todo-app>
  <h3>Todos</h3>
  <todo-list store={opts.store}></todo-list>
  <todo-form store={opts.store}></todo-form>
  <script>
    opts.store.subscribe(this.update)
  </script>
</todo-app>
