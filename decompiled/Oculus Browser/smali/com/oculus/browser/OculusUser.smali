.class public Lcom/oculus/browser/OculusUser;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final TAG:Ljava/lang/String; = "OculusUser"

.field public static mInstance:Lcom/oculus/browser/OculusUser;

.field public static mSync:Ljava/lang/Object;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mUserID:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oculus/browser/OculusUser;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/oculus/browser/OculusUser;->mContext:Landroid/content/Context;

    const-string p1, "Default"

    .line 3
    iput-object p1, p0, Lcom/oculus/browser/OculusUser;->mUserID:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oculus/browser/OculusUser;
    .locals 3

    .line 1
    sget-object v0, Lcom/oculus/browser/OculusUser;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/oculus/browser/OculusUser;->mInstance:Lcom/oculus/browser/OculusUser;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/oculus/browser/OculusUser;

    invoke-direct {v1, p0}, Lcom/oculus/browser/OculusUser;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-direct {v1}, Lcom/oculus/browser/OculusUser;->queryUserID()V

    .line 5
    sput-object v1, Lcom/oculus/browser/OculusUser;->mInstance:Lcom/oculus/browser/OculusUser;

    const-string p0, "OculusUser"

    const-string v1, "Successfully initialized OculusUser"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 6
    invoke-static {p0, v1, v2}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    sget-object p0, Lcom/oculus/browser/OculusUser;->mSync:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 8
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    sget-object p0, Lcom/oculus/browser/OculusUser;->mInstance:Lcom/oculus/browser/OculusUser;

    return-object p0

    :catchall_0
    move-exception p0

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getUserID()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lcom/oculus/browser/OculusUser;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/oculus/browser/OculusUser;->mInstance:Lcom/oculus/browser/OculusUser;

    if-nez v1, :cond_0

    const-string v1, "OculusUser"

    const-string v2, "mInstance == null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 3
    invoke-static {v1, v2, v3}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    :try_start_1
    sget-object v1, Lcom/oculus/browser/OculusUser;->mInstance:Lcom/oculus/browser/OculusUser;

    if-nez v1, :cond_0

    .line 5
    sget-object v1, Lcom/oculus/browser/OculusUser;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6
    :catch_0
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "OculusUser not instantiated"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    sget-object v0, Lcom/oculus/browser/OculusUser;->mInstance:Lcom/oculus/browser/OculusUser;

    iget-object v0, v0, Lcom/oculus/browser/OculusUser;->mUserID:Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v1

    .line 9
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static prefetchUserID(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/oculus/browser/OculusUser$1;

    invoke-direct {v0, p0}, Lcom/oculus/browser/OculusUser$1;-><init>(Landroid/content/Context;)V

    sget-object p0, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 2
    invoke-virtual {v0, p0}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    return-void
.end method

.method private queryUserID()V
    .locals 9

    const/4 v0, 0x0

    const-string v1, "OculusUser.queryUserID"

    .line 1
    invoke-static {v1, v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.oculus.horizon/profile?app_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {}, Lcom/oculus/browser/OculusApplicationID;->get()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/oculus/browser/OculusUser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 5
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "id"

    .line 7
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 8
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getType(I)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 9
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oculus/browser/OculusUser;->mUserID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 10
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    .line 11
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    .line 12
    sget-object v3, LRB;->a:LLB;

    invoke-virtual {v3, v1, v0}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 13
    :goto_0
    throw v2

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 14
    :cond_1
    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void
.end method
