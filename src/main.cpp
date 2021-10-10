#include <QQuickStyle>
#include <QtDebug>
#include <QtGui/QGuiApplication>
#include <QtQml/QQmlComponent>
#include <QtQml/QQmlEngine>

int main(int argc, char** argv) {
  QGuiApplication app(argc, argv);
  // QQuickStyle::setStyle("Default");
  // QQuickStyle::setStyle("Material");
  // QQuickStyle::setStyle("Universal");
  // QQuickStyle::setStyle("Fusion");
  // QQuickStyle::setStyle("Imagine");
  // QQuickStyle::setStyle("MyStyle");

  QQmlEngine engine;
  QQmlComponent component(&engine, QUrl("qrc:/main.qml"));
  if (component.isReady()) {
    QObject* root = component.create();
  } else {
    qCritical() << component.errorString();
  }

  return app.exec();
}