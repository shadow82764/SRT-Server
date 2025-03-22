#include <QApplication>
#include <QWidget>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    // Создаем окно
    QWidget window;
    window.setWindowTitle("VoiceApp");
    window.resize(400, 300);  // Размер окна
    window.show();

    return app.exec();
}
