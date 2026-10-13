.class public Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;
.super Ljava/lang/Object;
.source "LocalMediaCacheDatabase.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mLocalMediaSQLHelper:Lcom/oculus/localmedia/database/LocalMediaSQLHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/localmedia/database/LocalMediaSQLHelper;)V
    .locals 0
    .param p1, "localMediaSqlHelper"    # Lcom/oculus/localmedia/database/LocalMediaSQLHelper;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->mLocalMediaSQLHelper:Lcom/oculus/localmedia/database/LocalMediaSQLHelper;

    .line 26
    return-void
.end method

.method private static getFileLastModified(Ljava/lang/String;)J
    .locals 4
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 177
    if-eqz p0, :cond_0

    .line 178
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 183
    .end local v0    # "file":Ljava/io/File;
    :goto_0
    return-wide v2

    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method private typeToValue(Lcom/oculus/localmedia/MediaType;)I
    .locals 1
    .param p1, "type"    # Lcom/oculus/localmedia/MediaType;

    .prologue
    .line 152
    sget-object v0, Lcom/oculus/localmedia/MediaType;->VIDEO:Lcom/oculus/localmedia/MediaType;

    if-ne p1, v0, :cond_0

    .line 153
    const/4 v0, 0x1

    .line 157
    :goto_0
    return v0

    .line 154
    :cond_0
    sget-object v0, Lcom/oculus/localmedia/MediaType;->IMAGE:Lcom/oculus/localmedia/MediaType;

    if-ne p1, v0, :cond_1

    .line 155
    const/4 v0, 0x2

    goto :goto_0

    .line 157
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private valueToType(I)Lcom/oculus/localmedia/MediaType;
    .locals 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 162
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 163
    sget-object v0, Lcom/oculus/localmedia/MediaType;->VIDEO:Lcom/oculus/localmedia/MediaType;

    .line 165
    :goto_0
    return-object v0

    .line 164
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 165
    sget-object v0, Lcom/oculus/localmedia/MediaType;->IMAGE:Lcom/oculus/localmedia/MediaType;

    goto :goto_0

    .line 167
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported MediaType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public loadAllFromDatabase()Ljava/util/Map;
    .locals 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/oculus/localmedia/metadata/CachedMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v41, Ljava/util/HashMap;

    invoke-direct/range {v41 .. v41}, Ljava/util/HashMap;-><init>()V

    .line 34
    .local v41, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/oculus/localmedia/metadata/CachedMetadata;>;"
    :try_start_0
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v32, "pathsToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->mLocalMediaSQLHelper:Lcom/oculus/localmedia/database/LocalMediaSQLHelper;

    invoke-virtual {v5}, Lcom/oculus/localmedia/database/LocalMediaSQLHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 37
    .local v4, "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    .line 38
    .local v34, "startTime":J
    const/16 v5, 0x9

    new-array v6, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v7, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->PATH:Ljava/lang/String;

    aput-object v7, v6, v5

    const/4 v5, 0x1

    sget-object v7, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->TYPE:Ljava/lang/String;

    aput-object v7, v6, v5

    const/4 v5, 0x2

    sget-object v7, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->LAST_MODIFIED:Ljava/lang/String;

    aput-object v7, v6, v5

    const/4 v5, 0x3

    sget-object v7, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->IS_360:Ljava/lang/String;

    aput-object v7, v6, v5

    const/4 v5, 0x4

    sget-object v7, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->IS_180:Ljava/lang/String;

    aput-object v7, v6, v5

    const/4 v5, 0x5

    sget-object v7, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->IS_3D:Ljava/lang/String;

    aput-object v7, v6, v5

    const/4 v5, 0x6

    sget-object v7, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->IS_TB:Ljava/lang/String;

    aput-object v7, v6, v5

    const/4 v5, 0x7

    sget-object v7, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->ORIENTATION:Ljava/lang/String;

    aput-object v7, v6, v5

    const/16 v5, 0x8

    sget-object v7, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->HAS_AUDIO:Ljava/lang/String;

    aput-object v7, v6, v5

    .line 50
    .local v6, "columns":[Ljava/lang/String;
    const-string v5, "localmedia_metadata"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 51
    .local v14, "cursor":Landroid/database/Cursor;
    if-nez v14, :cond_0

    .line 111
    .end local v4    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v6    # "columns":[Ljava/lang/String;
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v32    # "pathsToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v34    # "startTime":J
    :goto_0
    return-object v41

    .line 55
    .restart local v4    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v6    # "columns":[Ljava/lang/String;
    .restart local v14    # "cursor":Landroid/database/Cursor;
    .restart local v32    # "pathsToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v34    # "startTime":J
    :cond_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_1

    .line 56
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    .end local v4    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v6    # "columns":[Ljava/lang/String;
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v32    # "pathsToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v34    # "startTime":J
    :catch_0
    move-exception v33

    .line 109
    .local v33, "t":Ljava/lang/Throwable;
    sget-object v5, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected error when fetching cached metadata from DB : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 60
    .end local v33    # "t":Ljava/lang/Throwable;
    .restart local v4    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v6    # "columns":[Ljava/lang/String;
    .restart local v14    # "cursor":Landroid/database/Cursor;
    .restart local v32    # "pathsToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v34    # "startTime":J
    :cond_1
    :try_start_1
    sget-object v5, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->PATH:Ljava/lang/String;

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 61
    .local v31, "pathIdx":I
    sget-object v5, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->TYPE:Ljava/lang/String;

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v40

    .line 62
    .local v40, "typeIdx":I
    sget-object v5, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->LAST_MODIFIED:Ljava/lang/String;

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v38

    .line 63
    .local v38, "timestampIdx":I
    sget-object v5, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->IS_360:Ljava/lang/String;

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 64
    .local v22, "is360Idx":I
    sget-object v5, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->IS_180:Ljava/lang/String;

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 65
    .local v20, "is180Idx":I
    sget-object v5, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->IS_3D:Ljava/lang/String;

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 66
    .local v24, "is3DIdx":I
    sget-object v5, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->IS_TB:Ljava/lang/String;

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 67
    .local v26, "isTBIdx":I
    sget-object v5, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->ORIENTATION:Ljava/lang/String;

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 68
    .local v29, "orientationIdx":I
    sget-object v5, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->HAS_AUDIO:Ljava/lang/String;

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 70
    .local v18, "hasAudioIdx":I
    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_8

    .line 71
    move/from16 v0, v31

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 72
    .local v30, "path":Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->getFileLastModified(Ljava/lang/String;)J

    move-result-wide v16

    .line 73
    .local v16, "fileLastModified":J
    move/from16 v0, v38

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 74
    .local v12, "cacheTimestamp":J
    move/from16 v0, v40

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->valueToType(I)Lcom/oculus/localmedia/MediaType;

    move-result-object v39

    .line 75
    .local v39, "type":Lcom/oculus/localmedia/MediaType;
    cmp-long v5, v12, v16

    if-ltz v5, :cond_7

    .line 76
    move/from16 v0, v22

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-lez v5, :cond_2

    const/16 v21, 0x1

    .line 77
    .local v21, "is360":Z
    :goto_2
    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-lez v5, :cond_3

    const/16 v19, 0x1

    .line 78
    .local v19, "is180":Z
    :goto_3
    move/from16 v0, v24

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-lez v5, :cond_4

    const/16 v23, 0x1

    .line 79
    .local v23, "is3D":Z
    :goto_4
    move/from16 v0, v26

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-lez v5, :cond_5

    const/16 v25, 0x1

    .line 80
    .local v25, "isTB":Z
    :goto_5
    move/from16 v0, v29

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 81
    .local v28, "orientation":I
    move/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-lez v5, :cond_6

    const/4 v15, 0x1

    .line 82
    .local v15, "hasAudio":Z
    :goto_6
    invoke-static {}, Lcom/oculus/localmedia/metadata/CachedMetadata;->builder()Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;

    move-result-object v5

    .line 83
    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->setType(Lcom/oculus/localmedia/MediaType;)Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;

    move-result-object v5

    .line 84
    move/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->setIs3D(Z)Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;

    move-result-object v5

    .line 85
    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->setIs360(Z)Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;

    move-result-object v5

    .line 86
    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->setIs180(Z)Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;

    move-result-object v5

    .line 87
    move/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->setIsTopBotton(Z)Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;

    move-result-object v5

    .line 88
    move/from16 v0, v28

    invoke-virtual {v5, v0}, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->setOrientation(I)Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;

    move-result-object v5

    .line 89
    invoke-virtual {v5, v15}, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->setHasAudio(Z)Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;

    move-result-object v5

    .line 90
    invoke-virtual {v5}, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->build()Lcom/oculus/localmedia/metadata/CachedMetadata;

    move-result-object v27

    .line 91
    .local v27, "metadata":Lcom/oculus/localmedia/metadata/CachedMetadata;
    move-object/from16 v0, v41

    move-object/from16 v1, v30

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .end local v15    # "hasAudio":Z
    .end local v19    # "is180":Z
    .end local v21    # "is360":Z
    .end local v23    # "is3D":Z
    .end local v25    # "isTB":Z
    .end local v27    # "metadata":Lcom/oculus/localmedia/metadata/CachedMetadata;
    .end local v28    # "orientation":I
    :goto_7
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 76
    :cond_2
    const/16 v21, 0x0

    goto :goto_2

    .line 77
    .restart local v21    # "is360":Z
    :cond_3
    const/16 v19, 0x0

    goto :goto_3

    .line 78
    .restart local v19    # "is180":Z
    :cond_4
    const/16 v23, 0x0

    goto :goto_4

    .line 79
    .restart local v23    # "is3D":Z
    :cond_5
    const/16 v25, 0x0

    goto :goto_5

    .line 81
    .restart local v25    # "isTB":Z
    .restart local v28    # "orientation":I
    :cond_6
    const/4 v15, 0x0

    goto :goto_6

    .line 93
    .end local v19    # "is180":Z
    .end local v21    # "is360":Z
    .end local v23    # "is3D":Z
    .end local v25    # "isTB":Z
    .end local v28    # "orientation":I
    :cond_7
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 97
    .end local v12    # "cacheTimestamp":J
    .end local v16    # "fileLastModified":J
    .end local v30    # "path":Ljava/lang/String;
    .end local v39    # "type":Lcom/oculus/localmedia/MediaType;
    :cond_8
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 100
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 101
    .restart local v30    # "path":Ljava/lang/String;
    sget-object v7, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Delete from DB cache path="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->remove(Ljava/lang/String;)V

    goto :goto_8

    .line 105
    .end local v30    # "path":Ljava/lang/String;
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    .line 107
    .local v36, "stopTime":J
    sget-object v5, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {v41 .. v41}, Ljava/util/Map;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from DB cache ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v36, v34

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " msec)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public put(Ljava/lang/String;Lcom/oculus/localmedia/metadata/CachedMetadata;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "metadata"    # Lcom/oculus/localmedia/metadata/CachedMetadata;

    .prologue
    .line 115
    iget-object v4, p0, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->mLocalMediaSQLHelper:Lcom/oculus/localmedia/database/LocalMediaSQLHelper;

    invoke-virtual {v4}, Lcom/oculus/localmedia/database/LocalMediaSQLHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 117
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 118
    invoke-static {p1}, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->getFileLastModified(Ljava/lang/String;)J

    move-result-wide v2

    .line 121
    .local v2, "fileLastModified":J
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->remove(Ljava/lang/String;)V

    .line 124
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 125
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 126
    .local v1, "values":Landroid/content/ContentValues;
    sget-object v4, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->PATH:Ljava/lang/String;

    invoke-virtual {v1, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    sget-object v4, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->LAST_MODIFIED:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 128
    sget-object v4, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->TYPE:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/oculus/localmedia/metadata/CachedMetadata;->getType()Lcom/oculus/localmedia/MediaType;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->typeToValue(Lcom/oculus/localmedia/MediaType;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    sget-object v4, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->IS_360:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/oculus/localmedia/metadata/CachedMetadata;->is360()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 130
    sget-object v4, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->IS_180:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/oculus/localmedia/metadata/CachedMetadata;->is180()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 131
    sget-object v4, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->IS_3D:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/oculus/localmedia/metadata/CachedMetadata;->is3D()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 132
    sget-object v4, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->IS_TB:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/oculus/localmedia/metadata/CachedMetadata;->isTopBotton()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 133
    sget-object v4, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->ORIENTATION:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/oculus/localmedia/metadata/CachedMetadata;->getOrientation()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    sget-object v4, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->HAS_AUDIO:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/oculus/localmedia/metadata/CachedMetadata;->hasAudio()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 135
    const-string v4, "localmedia_metadata"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 136
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 141
    return-void

    .line 139
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public remove(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-object v3, p0, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->mLocalMediaSQLHelper:Lcom/oculus/localmedia/database/LocalMediaSQLHelper;

    invoke-virtual {v3}, Lcom/oculus/localmedia/database/LocalMediaSQLHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 146
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "where":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 148
    .local v2, "whereArgs":[Ljava/lang/String;
    const-string v3, "localmedia_metadata"

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 149
    return-void
.end method
