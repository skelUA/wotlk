# mod-fishbot-detector

Цей модуль для AzerothCore виявляє підозрілу (надто часту) риболовлю,
можливо спричинену "fishbot" чи іншим ботом.

## Як встановити

1. Розмістіть папку `mod-fishbot-detector` в `azerothcore/modules/`.
2. У `azerothcore/modules/CMakeLists.txt` додайте:
   ```cmake
   add_subdirectory("mod-fishbot-detector")