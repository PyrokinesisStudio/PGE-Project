/*
 * Platformer Game Engine by Wohlstand, a free platform for game making
 * Copyright (c) 2014 Vitaly Novichkov <admin@wohlnet.ru>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#include <ui_mainwindow.h>
#include "../mainwindow.h"
#include "smart_import/smartimporter.h"


void MainWindow::dragEnterEvent(QDragEnterEvent *e)
{
    if (e->mimeData()->hasUrls()) {
        e->acceptProposedAction();
    }
}

void MainWindow::dropEvent(QDropEvent *e)
{
    this->raise();
    this->setFocus(Qt::ActiveWindowFocusReason);

    bool requestReload = false;

    foreach (const QUrl &url, e->mimeData()->urls()) {
        const QString &fileName = url.toLocalFile();
        if(activeChildWindow()==1){
            if(QFileInfo(fileName).isDir()){
                SmartImporter * importer = new SmartImporter((QWidget*)this, fileName, (QWidget*)activeLvlEditWin());
                if(importer->isValid()){
                    if(importer->attemptFastImport()){
                        requestReload = true;
                        delete importer;
                        continue;
                    }
                }
                delete importer;
            }
        }
        //qDebug() << "Dropped file:" << fileName;
        OpenFile(fileName);
    }
    if(requestReload)
        on_actionReload_triggered();
}

void MainWindow::closeEvent(QCloseEvent *event)
{
    ui->centralWidget->closeAllSubWindows();

    if (ui->centralWidget->currentSubWindow()) {
        event->ignore();
    }
    else
    {
        saveSettings();
        closeEditor();
        event->accept();
    }
}
