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

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->mLocalMediaSQLHelper:Lcom/oculus/localmedia/database/LocalMediaSQLHelper;

    .line 26
    return-void
.end method

.method private static getFileLastModified(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 148
    if-eqz p0, :cond_0

    .line 149
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 154
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method private typeToValue(Lcom/oculus/localmedia/MediaType;)I
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/oculus/localmedia/MediaType;->VIDEO:Lcom/oculus/localmedia/MediaType;

    if-ne p1, v0, :cond_0

    .line 134
    const/4 v0, 0x1

    .line 138
    :goto_0
    return v0

    .line 135
    :cond_0
    sget-object v0, Lcom/oculus/localmedia/MediaType;->IMAGE:Lcom/oculus/localmedia/MediaType;

    if-ne p1, v0, :cond_1

    .line 136
    const/4 v0, 0x2

    goto :goto_0

    .line 138
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getByType(Lcom/oculus/localmedia/MediaType;)Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/localmedia/MediaType;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/oculus/localmedia/metadata/CachedMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 34
    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->mLocalMediaSQLHelper:Lcom/oculus/localmedia/database/LocalMediaSQLHelper;

    invoke-virtual {v2}, Lcom/oculus/localmedia/database/LocalMediaSQLHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 38
    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v5, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->PATH:Ljava/lang/String;

    aput-object v5, v4, v3

    const/4 v3, 0x1

    sget-object v5, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->LAST_MODIFIED:Ljava/lang/String;

    aput-object v5, v4, v3

    const/4 v3, 0x2

    sget-object v5, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->IS_360:Ljava/lang/String;

    aput-object v5, v4, v3

    const/4 v3, 0x3

    sget-object v5, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->IS_3D:Ljava/lang/String;

    aput-object v5, v4, v3

    const/4 v3, 0x4

    sget-object v5, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->IS_TB:Ljava/lang/String;

    aput-object v5, v4, v3

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " = ?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 47
    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->typeToValue(Lcom/oculus/localmedia/MediaType;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 49
    const-string v3, "localmedia_metadata"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 51
    if-nez v5, :cond_0

    move-object v2, v10

    .line 95
    :goto_0
    return-object v2

    .line 55
    :cond_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 56
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move-object v2, v10

    .line 57
    goto :goto_0

    .line 60
    :cond_1
    sget-object v2, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->PATH:Ljava/lang/String;

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 61
    sget-object v2, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->LAST_MODIFIED:Ljava/lang/String;

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 62
    sget-object v2, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->IS_360:Ljava/lang/String;

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 63
    sget-object v2, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->IS_3D:Ljava/lang/String;

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 64
    sget-object v2, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->IS_TB:Ljava/lang/String;

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 66
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_6

    .line 67
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 68
    invoke-static {v15}, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->getFileLastModified(Ljava/lang/String;)J

    move-result-wide v2

    .line 69
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 70
    cmp-long v2, v16, v2

    if-ltz v2, :cond_5

    .line 71
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    move v4, v2

    .line 72
    :goto_2
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x1

    move v3, v2

    .line 73
    :goto_3
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_4

    const/4 v2, 0x1

    .line 74
    :goto_4
    invoke-static {}, Lcom/oculus/localmedia/metadata/CachedMetadata;->builder()Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->setType(Lcom/oculus/localmedia/MediaType;)Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->setIs3D(Z)Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->setIs360(Z)Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->setIsTopBotton(Z)Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oculus/localmedia/metadata/CachedMetadata$Builder;->build()Lcom/oculus/localmedia/metadata/CachedMetadata;

    move-result-object v2

    .line 75
    invoke-interface {v10, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :goto_5
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 92
    :catch_0
    move-exception v2

    .line 93
    sget-object v3, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected error when fetching cached metadata from DB : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    move-object v2, v10

    .line 95
    goto/16 :goto_0

    .line 71
    :cond_2
    const/4 v2, 0x0

    move v4, v2

    goto :goto_2

    .line 72
    :cond_3
    const/4 v2, 0x0

    move v3, v2

    goto :goto_3

    .line 73
    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    .line 77
    :cond_5
    :try_start_1
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 81
    :cond_6
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 84
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 85
    sget-object v4, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete from DB cache path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->remove(Ljava/lang/String;)V

    goto :goto_7

    .line 89
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 91
    sget-object v4, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from DB cache ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long/2addr v2, v12

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msec)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6
.end method

.method public put(Ljava/lang/String;Lcom/oculus/localmedia/metadata/CachedMetadata;)V
    .locals 6

    .prologue
    .line 99
    iget-object v0, p0, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->mLocalMediaSQLHelper:Lcom/oculus/localmedia/database/LocalMediaSQLHelper;

    invoke-virtual {v0}, Lcom/oculus/localmedia/database/LocalMediaSQLHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 102
    invoke-static {p1}, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->getFileLastModified(Ljava/lang/String;)J

    move-result-wide v2

    .line 105
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->remove(Ljava/lang/String;)V

    .line 108
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    .line 109
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 110
    sget-object v4, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->PATH:Ljava/lang/String;

    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    sget-object v4, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->LAST_MODIFIED:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 112
    sget-object v2, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->TYPE:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/oculus/localmedia/metadata/CachedMetadata;->getType()Lcom/oculus/localmedia/MediaType;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->typeToValue(Lcom/oculus/localmedia/MediaType;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 113
    sget-object v2, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->IS_360:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/oculus/localmedia/metadata/CachedMetadata;->is360()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 114
    sget-object v2, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->IS_3D:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/oculus/localmedia/metadata/CachedMetadata;->is3D()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 115
    sget-object v2, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->IS_TB:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/oculus/localmedia/metadata/CachedMetadata;->isTopBotton()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 116
    const-string v2, "localmedia_metadata"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 117
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 122
    return-void

    .line 120
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 125
    iget-object v0, p0, Lcom/oculus/localmedia/database/LocalMediaCacheDatabase;->mLocalMediaSQLHelper:Lcom/oculus/localmedia/database/LocalMediaSQLHelper;

    invoke-virtual {v0}, Lcom/oculus/localmedia/database/LocalMediaSQLHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 129
    const-string v3, "localmedia_metadata"

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 130
    return-void
.end method
