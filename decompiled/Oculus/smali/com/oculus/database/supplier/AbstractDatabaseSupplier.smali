.class public Lcom/oculus/database/supplier/AbstractDatabaseSupplier;
.super Ljava/lang/Object;
.source "AbstractDatabaseSupplier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/database/supplier/AbstractDatabaseSupplier$SoftErrors;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mDbName:Ljava/lang/String;

.field private final mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

.field private final mSchemaParts:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<+",
            "Lcom/oculus/database/supplier/SharedSQLiteSchemaPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;

    sput-object v0, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->TAG:Ljava/lang/Class;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/oculus/errorreporting/ErrorReporter;Lcom/google/common/collect/ImmutableList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oculus/errorreporting/ErrorReporter;",
            "Lcom/google/common/collect/ImmutableList",
            "<+",
            "Lcom/oculus/database/supplier/SharedSQLiteSchemaPart;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->mContext:Landroid/content/Context;

    .line 65
    iput-object p3, p0, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->mSchemaParts:Lcom/google/common/collect/ImmutableList;

    .line 66
    iput-object p4, p0, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->mDbName:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    .line 68
    return-void
.end method

.method private declared-synchronized ensureDatabase()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    :cond_0
    monitor-exit p0

    return-void

    .line 79
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 81
    sget-object v2, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->TAG:Ljava/lang/Class;

    const-string v3, "Initializing database %s"

    iget-object v4, p0, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->mDbName:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v8, v0

    move-object v0, v1

    move v1, v8

    .line 85
    :goto_0
    const/16 v2, 0xa

    if-gt v1, v2, :cond_3

    .line 87
    const/4 v2, 0x5

    if-le v1, v2, :cond_2

    .line 88
    :try_start_2
    iget-object v2, p0, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    const-string v3, "AbstractDatabaseSupplier_DELETE_AND_RETRY"

    const-string v4, "Deleting database \"%s\": open failures %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->mDbName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 88
    invoke-virtual {v2, v3, v4, v0}, Lcom/oculus/errorreporting/ErrorReporter;->softErrorWithCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    iget-object v2, p0, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->mDbName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 94
    :cond_2
    invoke-direct {p0}, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->initializeDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    :cond_3
    if-lez v1, :cond_4

    .line 108
    :try_start_3
    iget-object v2, p0, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    const-string v3, "AbstractDatabaseSupplier_EXCESSIVE_RETRIES"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " attempts for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->mDbName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/oculus/errorreporting/ErrorReporter;->softErrorWithCrash(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_4
    iget-object v1, p0, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    .line 113
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 96
    :catch_0
    move-exception v0

    .line 101
    const-wide/16 v2, 0x1e

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 85
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :catch_1
    move-exception v2

    .line 103
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method protected static getDatabaseErrorHandler()Landroid/database/DatabaseErrorHandler;
    .locals 1

    .prologue
    .line 190
    new-instance v0, Landroid/database/DefaultDatabaseErrorHandler;

    invoke-direct {v0}, Landroid/database/DefaultDatabaseErrorHandler;-><init>()V

    return-object v0
.end method

.method private initializeDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 6

    .prologue
    .line 118
    new-instance v0, Lcom/oculus/database/supplier/SharedSQLiteOpenHelper;

    iget-object v1, p0, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->mDbName:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->mSchemaParts:Lcom/google/common/collect/ImmutableList;

    .line 120
    invoke-virtual {p0}, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->getJournalSizeLimit()I

    move-result v4

    invoke-static {}, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->getDatabaseErrorHandler()Landroid/database/DatabaseErrorHandler;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oculus/database/supplier/SharedSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILandroid/database/DatabaseErrorHandler;)V

    .line 123
    :try_start_0
    invoke-virtual {v0}, Lcom/oculus/database/supplier/SharedSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 134
    invoke-virtual {p0}, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->getMaximumSizeLimit()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->getMaximumSizeLimit()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->setMaximumSize(J)J

    .line 137
    :cond_0
    :goto_0
    return-object v0

    .line 124
    :catch_0
    move-exception v0

    .line 128
    sget-object v1, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->TAG:Ljava/lang/Class;

    const-string v2, "Database %s corrupt and repair overflowed; deleting"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->mDbName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iget-object v1, p0, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    const-string v2, "AbstractDatabaseSupplier_DATABASE_CORRUPT_RECOVERY"

    iget-object v3, p0, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->mDbName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    invoke-virtual {p0}, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->deleteDatabase()V

    .line 132
    invoke-direct {p0}, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->initializeDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized deleteDatabase()V
    .locals 1

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->deleteDatabaseInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit p0

    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized deleteDatabaseInternal()V
    .locals 2

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->mDbName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit p0

    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->ensureDatabase()V

    .line 72
    iget-object v0, p0, Lcom/oculus/database/supplier/AbstractDatabaseSupplier;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getJournalSizeLimit()I
    .locals 1

    .prologue
    .line 158
    const v0, 0xc800

    return v0
.end method

.method protected getMaximumSizeLimit()J
    .locals 2

    .prologue
    .line 147
    const-wide/16 v0, -0x1

    return-wide v0
.end method
