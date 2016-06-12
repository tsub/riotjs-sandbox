<todo-list>
  <ul>
    <li each={store.getState().todos}>
      <todo-item id={id} title={title} done={done} store={parent.store}></todo-item>
    </li>
  </ul>
  <script>
    this.store = opts.store;
    this.store.subscribe(this.update);
  </script>
</todo-list>
