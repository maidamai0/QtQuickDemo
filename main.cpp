#include <QtDebug>
#include <QtGui/QGuiApplication>
#include <QtQml/QQmlComponent>
#include <QtQml/QQmlEngine>

#include "qguiapplication.h"
#include "qqmlcomponent.h"
#include "qqmlengine.h"

int main(int argc, char** argv) {
  QGuiApplication app(argc, argv);

  QQmlEngine engine;
  QQmlComponent component(&engine, QUrl("qrc:/main.qml"));
  if (component.isReady()) {
    QObject* root = component.create();
  } else {
    qCritical() << component.errorString();
  }

  return app.exec();
}