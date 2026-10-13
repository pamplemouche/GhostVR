.class public Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;
.super Lcom/oculus/content/OculusSecureContentProvider;
.source "LibraryDBCacheContentProvider.java"


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mKnownDBColumnNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLibraryCacheSQLHelper:Lcom/oculus/horizon/library/cache/LibraryCacheSQLHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;)V
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;)V
    .locals 1

    .prologue
    .line 28
    invoke-static {p0}, Lcom/oculus/horizon/library/cache/LibraryCacheSQLHelper;->$ul_$xXXcom_oculus_horizon_library_cache_LibraryCacheSQLHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/library/cache/LibraryCacheSQLHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;->mLibraryCacheSQLHelper:Lcom/oculus/horizon/library/cache/LibraryCacheSQLHelper;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;->TAG:Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/oculus/content/OculusSecureContentProvider;-><init>()V

    return-void
.end method

.method private filterUnknownColumns(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;->mKnownDBColumnNames:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 55
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v2, p0, Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;->mKnownDBColumnNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 61
    :cond_1
    return-object p1
.end method

.method private getKnownDBColumns()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 201
    const-class v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;

    .line 203
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 204
    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 210
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 214
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 215
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid db column access modifier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 218
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->toGenericString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 221
    :cond_1
    return-object v2
.end method

.method private notifyBulkInsert(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 195
    const-string v0, "db_bulk_insert"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 196
    invoke-virtual {p0}, Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 197
    return-void
.end method

.method private notifyRowChange(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 187
    sget-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->PACKAGE_NAME:Ljava/lang/String;

    .line 189
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 191
    return-object v0
.end method


# virtual methods
.method protected doBulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 67
    sget-object v1, Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    :goto_0
    return v0

    .line 71
    :cond_0
    sget-object v1, Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;->TAG:Ljava/lang/String;

    const-string v2, "bulkInsert"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 74
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 76
    :try_start_0
    array-length v4, p2

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v1, p2, v2

    .line 77
    invoke-direct {p0, v1}, Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;->filterUnknownColumns(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 79
    :try_start_1
    const-string v1, "library_cache"

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :goto_2
    add-int/lit8 v1, v0, 0x1

    .line 76
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto :goto_1

    .line 80
    :catch_0
    move-exception v1

    .line 81
    :try_start_2
    sget-object v6, Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;->TAG:Ljava/lang/String;

    const-string v7, "Failed to insert %s into %s in bulk insertion: %s"

    sget-object v8, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->PACKAGE_NAME:Ljava/lang/String;

    .line 85
    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v8, "library_cache"

    .line 87
    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 83
    invoke-static {v7, v5, v8, v9}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 81
    invoke-static {v6, v5, v1}, Lcom/oculus/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 94
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 92
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 97
    invoke-direct {p0, p1}, Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;->notifyBulkInsert(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method protected doDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 153
    sget-object v0, Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    const/4 v0, 0x0

    .line 160
    :goto_0
    return v0

    .line 156
    :cond_0
    sget-object v0, Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "delete"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 159
    const-string v1, "library_cache"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method protected doGetType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method protected doInitialization()V
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;)V

    .line 43
    invoke-direct {p0}, Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;->getKnownDBColumns()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;->mKnownDBColumnNames:Ljava/util/Set;

    .line 44
    return-void
.end method

.method protected doInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 128
    sget-object v1, Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    :goto_0
    return-object v0

    .line 131
    :cond_0
    sget-object v0, Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "insert"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 134
    invoke-direct {p0, p2}, Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;->filterUnknownColumns(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v1

    .line 136
    :try_start_0
    const-string v2, "library_cache"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;->notifyRowChange(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    sget-object v2, Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;->TAG:Ljava/lang/String;

    const-string v3, "Failed to insert %s into %s: %s"

    sget-object v4, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->PACKAGE_NAME:Ljava/lang/String;

    .line 142
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "library_cache"

    .line 144
    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 140
    invoke-static {v3, v4, v5, v6}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-static {v2, v3, v0}, Lcom/oculus/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 104
    sget-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract;->CONTENT_URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 116
    :goto_0
    return-object v5

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 110
    const-string v1, "limit"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 111
    if-eqz v8, :cond_1

    .line 112
    const-string v1, "library_cache"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0

    .line 116
    :cond_1
    const-string v1, "library_cache"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0
.end method

.method protected doUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 165
    sget-object v0, Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    const/4 v0, 0x0

    .line 178
    :cond_0
    :goto_0
    return v0

    .line 168
    :cond_1
    sget-object v0, Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "update"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 171
    const-string v0, "UPDATE_PARAMETER_SEND_UPDATE_NOTIFICATION"

    .line 172
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 173
    invoke-direct {p0, p2}, Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;->filterUnknownColumns(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v3

    .line 174
    const-string v0, "library_cache"

    invoke-virtual {v1, v0, v3, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 175
    if-eqz v2, :cond_0

    .line 176
    invoke-direct {p0, p1, v3}, Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;->notifyRowChange(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oculus/horizon/library/cache/LibraryDBCacheContentProvider;->mLibraryCacheSQLHelper:Lcom/oculus/horizon/library/cache/LibraryCacheSQLHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/library/cache/LibraryCacheSQLHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
