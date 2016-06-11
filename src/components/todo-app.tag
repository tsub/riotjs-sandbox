<todo-app>
  <h3>Todos</h3>
  <todo-form store={store}></todo-form>
  <todo-list store={store}></todo-list>
  <script>
    this.store = opts.store;
    this.store.subscribe(this.update);
  </script>
</todo-app>
