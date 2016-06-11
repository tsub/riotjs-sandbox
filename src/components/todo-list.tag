<todo-list>
  <ul>
    <li each={todo in store.getState().todos}>
      <todo-item title={todo.title}></todo-item>
    </li>
  </ul>
  <script>
    this.store = opts.store;
  </script>
</todo-list>
