#include "dbarcodeconfig.h"
#include "ui_dbarcodeconfig.h"

DBarcodeConfig::DBarcodeConfig(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::DBarcodeConfig)
{
    ui->setupUi(this);
    connect(ui->_SliderMaxVal, &QSlider::valueChanged, ui->_LMaxVal, qOverload<int>(&QLabel::setNum));
}

DBarcodeConfig::~DBarcodeConfig()
{
    delete ui;
}

void DBarcodeConfig::setSliderMaxValue(int value)
{
    this->ui->_SliderMaxVal->setValue(value);
}

int DBarcodeConfig::getSliderMaxValue()
{
    return this->ui->_SliderMaxVal->value();
}
