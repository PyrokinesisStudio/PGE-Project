/*
 * Platformer Game Engine by Wohlstand, a free platform for game making
 * Copyright (c) 2014-2015 Vitaly Novichkov <admin@wohlnet.ru>
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

#ifndef FILE_FORMATS_H
#define FILE_FORMATS_H

#include "pge_file_lib_globs.h"
#include "lvl_filedata.h"
#include "npc_filedata.h"
#include "wld_filedata.h"
#include "save_filedata.h"
#include "smbx64_cnf_filedata.h"

/*!
 * \brief PGE File library class of static functions.
 *        Library is buildable in both Qt and STL applications
 */
#ifdef PGE_FILES_QT
class FileFormats: PGE_FILES_INHERED
{
    Q_OBJECT
#else
class FileFormats
{
#endif

public:

//File format read/write functions
    /*!
     * \brief Parses non-SMBX64 meta-data from additional *.meta files
     *        there are contains data which impossible to save into SMBX64 LVL file
     *        therefore it will be saved into additional *.meta file
     * \param Raw-data Full raw file data contents
     * \return Meta-data structure
     */
    static MetaData         ReadNonSMBX64MetaData(PGESTRING RawData);

    /*!
     * \brief Generates raw data of non-SMBX meta-data file from Meta-data structure
     * \param metaData Meta-data structure
     * \return Full raw-data string
     */
    static PGESTRING        WriteNonSMBX64MetaData(MetaData metaData);

/******************************Level files***********************************/
    /*!
     * \brief Parses a level file with auto-detection of a file type (SMBX1...64 LVL or PGE-LVLX)
     * \param filePath Full path to file which must be opened
     * \return Level data structure
     */
    static LevelData        OpenLevelFile(PGESTRING filePath);
    /*!
     * \brief Parses a level file header only with auto-detection of a file type (SMBX1...64 LVL or PGE-LVLX)
     * \param filePath Full path to file which must be opened
     * \return Level data structure (with initialized header data only)
     */
    static LevelData        OpenLevelFileHeader(PGESTRING filePath);

// SMBX64 LVL File
    /*!
     * \brief Parses SMBX1...64 level file header and skips other part of a file
     * \param filePath Full path to level file
     * \return Level data structure (with initialized header data only)
     */
    static LevelData        ReadSMBX64LvlFileHeader(PGESTRING filePath);
    /*!
     * \brief Parses SMBX1...64 level file data
     * \param RawData Full raw-data of the SMBX1...64 level file
     * \param filePath Full path to the file (if empty, custom data in the episode and in the custom directories are will be inaccessible)
     * \return Level data structure
     */
    static LevelData        ReadSMBX64LvlFile(PGESTRING RawData, PGESTRING filePath="");
    /*!
     * \brief Generates SMBX1...64 Level file data
     * \param FileData Level data structure
     * \param file_format SMBX file format version number (from 0 to 64) [Example of level in SMBX0 format is intro.dat included with SMBX 1.0]
     * \return Full raw-data string
     */
    static PGESTRING        WriteSMBX64LvlFile(LevelData FileData, int file_format=64);  //!< Generate SMBX1-SMBX64 level raw data

// PGE Extended Level File
    /*!
     * \brief Parses PGE-X Level file header
     * \param filePath Full path to PGE-X Level file
     * \return Level data structure (with initialized header data only)
     */
    static LevelData        ReadExtendedLvlFileHeader(PGESTRING filePath); //!< Read file header only
    static LevelData        ReadExtendedLvlFile(PGESTRING RawData, PGESTRING filePath=""); //!< Parse PGE-X level file
    static PGESTRING        WriteExtendedLvlFile(LevelData FileData);  //!< Generate PGE-X level raw data

// Lvl Data
    static LevelData        CreateLevelData(); //!< Generate empty level map

    static LevelNPC         CreateLvlNpc();
    static LevelDoor        CreateLvlWarp();
    static LevelBlock       CreateLvlBlock();
    static LevelBGO         CreateLvlBgo();
    static LevelPhysEnv     CreateLvlPhysEnv();
    static LevelLayer       CreateLvlLayer();
    static LevelSMBX64Event CreateLvlEvent();
    static PlayerPoint      CreateLvlPlayerPoint(int id=0);
    static LevelSection     CreateLvlSection();

    static void             smbx64LevelPrepare(LevelData &lvl);

    static void             smbx64LevelSortBlocks(LevelData &lvl);
    static void             smbx64LevelSortBGOs(LevelData &lvl);


/******************************World file***********************************/
    static WorldData        OpenWorldFile(PGESTRING filePath);
    static WorldData        OpenWorldFileHeader(PGESTRING filePath);

    // SMBX64 WLD File
    static WorldData        ReadSMBX64WldFileHeader(PGESTRING filePath); //!< Read file header only
    static WorldData        ReadSMBX64WldFile(PGESTRING RawData, PGESTRING filePath); //!< Parse SMBX1-SMBX64 world
    static PGESTRING        WriteSMBX64WldFile(WorldData FileData, int file_format=64);  //!< Generate SMBX1-SMBX64 world raw data

    // PGE Extended World map File
    static WorldData        ReadExtendedWldFileHeader(PGESTRING filePath); //!< Read file header only
    static WorldData        ReadExtendedWldFile(PGESTRING RawData, PGESTRING filePath); //!< Parse PGE-X world file
    static PGESTRING        WriteExtendedWldFile(WorldData FileData);  //!< Generate PGE-X world raw data

    //Wld Data
    static WorldData        CreateWorldData(); //!< Generate empty world map

    static WorldTiles       CreateWldTile();
    static WorldScenery     CreateWldScenery();
    static WorldPaths       CreateWldPath();
    static WorldLevels      CreateWldLevel();
    static WorldMusic       CreateWldMusicbox();


    /****************************Save of game file********************************/
    static GamesaveData     ReadSMBX64SavFile(PGESTRING RawData, PGESTRING filePath);  //!< Parse SMBX1-SMBX64 game save

    static GamesaveData     ReadExtendedSaveFile(PGESTRING RawData, PGESTRING filePath);  //!< Parse PGE-X game save
    static PGESTRING        WriteExtendedSaveFile(GamesaveData &FileData);

    //Save Data
    static GamesaveData     CreateGameSaveData();
    static saveCharState    CreateSavCharacterState();

/****************************SMBX64 Config file********************************/
    static SMBX64_ConfigFile ReadSMBX64ConfigFile(PGESTRING RawData);  //!< Parse SMBX1-SMBX64 Config file
    static PGESTRING        WriteSMBX64ConfigFile(SMBX64_ConfigFile &FileData, int file_format);

/******************************NPC.txt file***********************************/
    // SMBX64 NPC.TXT File
    static NPCConfigFile    ReadNpcTXTFile(PGESTRING file, bool IgnoreBad=false); //read
    static PGESTRING        WriteNPCTxtFile(NPCConfigFile FileData);                //write

    static NPCConfigFile    CreateEmpytNpcTXT();

/******************************common stuff***********************************/
    enum ErrorCodes{
        Success=0,
        ERROR_NotExist,
        ERROR_AccessDenied,
        ERROR_InvalidSyntax,
        ERROR_PGEX_SectionNotClosed,
        ERROR_PGEX_InvalidSyntax,
        ERROR_PGEX_InvalidDataType
    };
    static PGESTRING        getErrorString(ErrorCodes errCode);

    enum SMBX64_violations {
        SMBX64_FINE             =0,
        SMBX64EXC_SECTIONS      =1<<0,
        SMBX64EXC_BLOCKS        =1<<1,
        SMBX64EXC_BGOS          =1<<2,
        SMBX64EXC_NPCS          =1<<3,
        SMBX64EXC_WATERBOXES    =1<<4,
        SMBX64EXC_WARPS         =1<<5,
        SMBX64EXC_LAYERS        =1<<6,
        SMBX64EXC_EVENTS        =1<<7,
        SMBX64EXC_TILES         =1<<8,
        SMBX64EXC_SCENERIES     =1<<9,
        SMBX64EXC_PATHS         =1<<10,
        SMBX64EXC_LEVELS        =1<<11,
        SMBX64EXC_MUSICBOXES    =1<<12
    };

    //Check SMBX64 limits
    static int              smbx64LevelCheckLimits(LevelData &lvl);
    static int              smbx64WorldCheckLimits(WorldData &wld);

    /******************************Internal stuff***********************************/
    static PGESTRING        removeQuotes(PGESTRING str); // Remove quotes from begin and end
    static PGESTRING        errorString; //!< String which contains info about last happened error
};

#endif // FILE_FORMATS_H

