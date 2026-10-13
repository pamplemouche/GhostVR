.class public final Lcom/oculus/database/supplier/SharedSQLiteDbHelper;
.super Ljava/lang/Object;
.source "SharedSQLiteDbHelper.java"


# static fields
.field private static final COLS:[Ljava/lang/String;

.field private static volatile sAppBuildNumber:I

.field private static volatile sLastAppUpgradeTime:J


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mJournalSizeLimit:I

.field private final mParts:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/database/supplier/SharedSQLiteSchemaPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    sput v2, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->sAppBuildNumber:I

    .line 41
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->sLastAppUpgradeTime:J

    .line 136
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "version"

    aput-object v1, v0, v2

    sput-object v0, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->COLS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILandroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/oculus/database/supplier/SharedSQLiteSchemaPart;",
            ">;I",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->mParts:Lcom/google/common/collect/ImmutableList;

    .line 50
    iput p2, p0, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->mJournalSizeLimit:I

    .line 51
    iput-object p3, p0, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method private checkAppUpgrade(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 115
    const/4 v0, 0x0

    .line 119
    iget-object v2, p0, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->getAppBuildNumber(Landroid/content/Context;)I

    move-result v2

    .line 120
    invoke-static {p1}, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->getAppBuildNumberFromDatabase(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v3

    .line 121
    if-eq v2, v3, :cond_0

    .line 122
    invoke-static {p1, v2}, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->writeAppBuildNumber(Landroid/database/sqlite/SQLiteDatabase;I)V

    move v0, v1

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->getLastAppUpgradeTime(Landroid/content/Context;)J

    move-result-wide v2

    .line 127
    invoke-static {p1}, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->getLastAppUpgradeTimeFromDatabase(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v4

    .line 128
    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 129
    invoke-static {p1, v2, v3}, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->writeLastAppUpgradeTime(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 133
    :goto_0
    return v1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method private static getAppBuildNumber(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 196
    sget v0, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->sAppBuildNumber:I

    if-nez v0, :cond_0

    .line 199
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v0, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->sAppBuildNumber:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :cond_0
    :goto_0
    sget v0, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->sAppBuildNumber:I

    return v0

    .line 200
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static getAppBuildNumberFromDatabase(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 174
    const-string v1, "_shared_version"

    sget-object v2, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->COLS:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "app_build_number"

    aput-object v0, v4, v6

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    .line 175
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 185
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 189
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 192
    :goto_0
    return v0

    .line 189
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 192
    const/4 v0, -0x1

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getLastAppUpgradeTime(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 230
    sget-wide v0, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->sLastAppUpgradeTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 233
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    sput-wide v0, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->sLastAppUpgradeTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :cond_0
    :goto_0
    sget-wide v0, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->sLastAppUpgradeTime:J

    return-wide v0

    .line 234
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static getLastAppUpgradeTimeFromDatabase(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 209
    const-string v1, "_shared_version"

    sget-object v2, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->COLS:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "app_upgrade_time"

    aput-object v0, v4, v6

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    .line 210
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 220
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 224
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 226
    :goto_0
    return-wide v0

    .line 224
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 226
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 224
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected static getPragmaInt(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 262
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 263
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 265
    if-eqz v1, :cond_0

    .line 266
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return v0

    .line 265
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 266
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method private static queryPartVersion(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 160
    const-string v1, "_shared_version"

    sget-object v2, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->COLS:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    .line 161
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 164
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 168
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 170
    :goto_0
    return v0

    .line 168
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 170
    const/4 v0, -0x1

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected static setJournalSizeLimit(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 2

    .prologue
    .line 251
    const-string v0, "page_size"

    invoke-static {p0, v0}, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->getPragmaInt(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    .line 254
    const/4 v1, 0x1

    div-int v0, p1, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 255
    const-string/jumbo v1, "wal_autocheckpoint"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->setPragma(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v0, "journal_size_limit"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->setPragma(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method protected static setPragma(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 274
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    if-eqz v0, :cond_0

    .line 277
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 280
    :cond_0
    return-void

    .line 276
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 277
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v1
.end method

.method private static writeAppBuildNumber(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 3

    .prologue
    .line 146
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 147
    const-string v1, "name"

    const-string v2, "app_build_number"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string/jumbo v1, "version"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    const-string v1, "_shared_version"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 150
    return-void
.end method

.method private static writeLastAppUpgradeTime(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 3

    .prologue
    .line 153
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 154
    const-string v1, "name"

    const-string v2, "app_upgrade_time"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string/jumbo v1, "version"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 156
    const-string v1, "_shared_version"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 157
    return-void
.end method

.method private static writePartVersion(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 139
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 140
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string/jumbo v1, "version"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
    const-string v1, "_shared_version"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 143
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 55
    const-string v0, "CREATE TABLE _shared_version (name TEXT PRIMARY KEY, version INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 75
    iget v0, p0, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->mJournalSizeLimit:I

    invoke-static {p1, v0}, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->setJournalSizeLimit(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 76
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 78
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->checkAppUpgrade(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    .line 79
    iget-object v0, p0, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->mParts:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/database/supplier/SharedSQLiteSchemaPart;

    .line 80
    invoke-virtual {v0}, Lcom/oculus/database/supplier/SharedSQLiteSchemaPart;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->queryPartVersion(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v3

    .line 81
    if-ne v3, v5, :cond_4

    .line 82
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 83
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Can\'t upgrade readonly database"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 85
    :cond_1
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/oculus/database/supplier/SharedSQLiteSchemaPart;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 95
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    if-eq v3, v5, :cond_3

    .line 96
    invoke-virtual {v0, p1}, Lcom/oculus/database/supplier/SharedSQLiteSchemaPart;->onAppUpgrade(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 99
    :cond_3
    invoke-virtual {v0}, Lcom/oculus/database/supplier/SharedSQLiteSchemaPart;->getVersion()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 101
    invoke-virtual {v0}, Lcom/oculus/database/supplier/SharedSQLiteSchemaPart;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/oculus/database/supplier/SharedSQLiteSchemaPart;->getVersion()I

    move-result v0

    invoke-static {p1, v3, v0}, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->writePartVersion(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V

    goto :goto_0

    .line 86
    :cond_4
    invoke-virtual {v0}, Lcom/oculus/database/supplier/SharedSQLiteSchemaPart;->getVersion()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 87
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 88
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Can\'t upgrade readonly database"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_5
    invoke-virtual {v0}, Lcom/oculus/database/supplier/SharedSQLiteSchemaPart;->getVersion()I

    move-result v4

    invoke-virtual {v0, p1, v3, v4}, Lcom/oculus/database/supplier/SharedSQLiteSchemaPart;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_1

    .line 91
    :cond_6
    invoke-virtual {v0}, Lcom/oculus/database/supplier/SharedSQLiteSchemaPart;->getVersion()I

    move-result v4

    if-le v3, v4, :cond_2

    .line 92
    new-instance v1, Landroid/database/sqlite/SQLiteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t downgrade version for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/oculus/database/supplier/SharedSQLiteSchemaPart;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_7
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 109
    iget-object v0, p0, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->mParts:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/database/supplier/SharedSQLiteSchemaPart;

    .line 110
    invoke-virtual {v0, p1}, Lcom/oculus/database/supplier/SharedSQLiteSchemaPart;->onOpenAfterTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_2

    .line 112
    :cond_8
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .prologue
    .line 66
    const/16 v0, 0xc8

    if-ge p2, v0, :cond_0

    .line 67
    const-string v0, "CREATE TABLE _shared_version (name TEXT PRIMARY KEY, version INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->mParts:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/database/supplier/SharedSQLiteSchemaPart;

    .line 69
    invoke-virtual {v0}, Lcom/oculus/database/supplier/SharedSQLiteSchemaPart;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->writePartVersion(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V

    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method
