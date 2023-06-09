<h1 align="center">About</h1>

# Run project
```sh
flutter run lib/main.dart
```

<br />

# Run sorting imports
```sh
flutter pub run import_sorter:main
```

<br />

# Generate files
```sh
flutter packages pub run build_runner build --delete-conflicting-outputs
```

<br />

# Модуль 20. Perfomance

#### Задание
1. Создать приложение со сложным layout:
    - проанализировать layout через Flutter Inspector, приложить скриншоты.

2. Проанализировать приложение с помощью PerformanceView:
    - оптимизировать работу с точки зрения производительности. Приложить скриншоты до и после оптимизации.

3. Проанализировать приложение с помощью CPU Profiler и MemoryView:
    - найти самые затратные компоненты, идентифицировать их и приложить скриншоты.
    - специально добавить memory leak и посмотреть, как это выглядит на MemoryView. Приложить скриншоты.

4. Добавить в приложение сетевой слой для получения данных из сети:
    - проанализировать данные с помощью NetworkView, приложить скриншоты.

5. Добавить в приложение статический Feature Toggle (или отдельный Entry Point) который включает/отключает сетевой слой:
    - проанализировать размер приложения с включённым и отключённым сетевым слоем. Приложить скриншоты.
