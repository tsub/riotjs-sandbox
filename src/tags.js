import riot from 'riot';

riot.tag('todo-app',
  `<h3>Todos</h3>
  <todo-list></todo-list>
  `
);

riot.tag('todo-list',
  `<span class=".done" onclick="{ toggle }">
    hoge
  </span>
  `
);