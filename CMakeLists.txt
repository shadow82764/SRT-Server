cmake_minimum_required(VERSION 3.16)
project(VoiceApp LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Указываем путь к Qt6
set(CMAKE_PREFIX_PATH "C:/Qt/6.8.2/mingw_64")
find_package(Qt6 REQUIRED COMPONENTS Core Widgets)

# Указываем путь к PortAudio
set(CMAKE_PREFIX_PATH "C:/PortAudio/build/cmake/portaudio")
find_package(PortAudio REQUIRED)

# Указываем путь к Opus
# Указываем путь к include-директориям Opus
include_directories("C:/Opus/opus-1.5.2/include")

# Указываем путь к статической библиотеке
set(OPUS_LIBRARIES "C:/Opus/opus-1.5.2/libopus.a")

# Линкуем с библиотекой Opus
target_link_libraries(VoiceApp ${OPUS_LIBRARIES})


# Указываем путь к Boost
set(BOOST_ROOT "C:/Boost")
set(BOOST_INCLUDEDIR "C:/Boost/include/boost-1_87/boost")


find_package(Boost REQUIRED COMPONENTS system filesystem)

# Указываем путь к заголовочным файлам и библиотекам PostgreSQL
set(PostgreSQL_INCLUDE_DIRS "C:/Program Files/PostgreSQL/17/include")
set(PostgreSQL_LIBRARIES "C:/Program Files/PostgreSQL/17/lib/libpq.lib")  # Укажите точный путь к .lib или .a файлу

# Добавляем исходники
add_executable(VoiceApp main.cpp)

# Линкуем с библиотеками
target_link_libraries(VoiceApp
    Qt6::Core Qt6::Widgets
    ${PortAudio_LIBRARIES}
    ${OPUS_LIBRARIES}
    ${Boost_LIBRARIES}
    ${PostgreSQL_LIBRARIES}
)
