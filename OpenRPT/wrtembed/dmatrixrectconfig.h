#ifndef DMATRIXRECTCONFIG_H
#define DMATRIXRECTCONFIG_H

#include <QWidget>
#include <QComboBox>
#include <QString>

namespace Ui {
    class DMatrixRectConfig;
}

//dans le fichier dmtx.h l'enumaration des datamatrix carr� commence � 24
class DMatrixRectConfig : public QWidget
{
    Q_OBJECT

public:
    explicit DMatrixRectConfig(QWidget *parent = 0);
    ~DMatrixRectConfig();

    QString format();

public slots:
    void setVisible2(bool visible = false);
    void setIndexValue(int index);

private slots:
    void capacityRefresh(int i);
    void indexType(int index);

signals:
    void signalType(int index);

private:

    Ui::DMatrixRectConfig *ui;

    //capacit� � titre indicatif, possible erreur d'�criture
    static QString capacite[];
};

#endif // DMATRIXRECTCONFIG_H
