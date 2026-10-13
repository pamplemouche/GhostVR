.class public abstract Lcom/facebook/secure/content/AbstractContentProviderNoDI;
.super Landroid/content/ContentProvider;
.source "AbstractContentProviderNoDI.java"


# instance fields
.field private final mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLogger:Lcom/facebook/secure/logger/ContentProviderLogger;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->mLogger:Lcom/facebook/secure/logger/ContentProviderLogger;

    return-void
.end method

.method private beginTraceSection(Ljava/lang/String;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x200

    .line 520
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 524
    invoke-static {v2, v3, v0}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 526
    :cond_0
    return-void
.end method

.method private endTraceSection()V
    .locals 2

    .prologue
    .line 531
    const-wide/16 v0, 0x200

    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 532
    return-void
.end method

.method private logUsage(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->getLogger()Lcom/facebook/secure/logger/ContentProviderLogger;

    move-result-object v1

    .line 545
    if-eqz v1, :cond_0

    .line 546
    invoke-virtual {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 547
    const-string v2, "%s"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 551
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3, v0}, Lcom/facebook/secure/trustedapp/TrustedApp;->getAppIdentity(ILandroid/content/Context;)Lcom/facebook/secure/trustedapp/AppIdentity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 556
    :goto_0
    if-eqz v0, :cond_1

    .line 557
    invoke-static {v0}, Lcom/facebook/secure/trustedapp/AppIdentity;->print(Lcom/facebook/secure/trustedapp/AppIdentity;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, p1, v0}, Lcom/facebook/secure/logger/ContentProviderLogger;->logUsage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    :cond_0
    :goto_1
    return-void

    .line 552
    :catch_0
    move-exception v0

    .line 553
    const/4 v0, 0x0

    goto :goto_0

    .line 559
    :cond_1
    invoke-interface {v1, v2, p1}, Lcom/facebook/secure/logger/ContentProviderLogger;->logUsage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected allowOwnCallingProcess()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public final applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 310
    const-string v0, "applyBatch"

    invoke-direct {p0, v0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->beginTraceSection(Ljava/lang/String;)V

    .line 311
    const-string v0, "applyBatch"

    invoke-direct {p0, v0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->logUsage(Ljava/lang/String;)V

    .line 313
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->ensureInitializedAndEnforcePermissions()V

    .line 314
    invoke-virtual {p0, p1}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->doApplyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 316
    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    throw v0
.end method

.method public final bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 1

    .prologue
    .line 273
    const-string v0, "bulkInsert"

    invoke-direct {p0, v0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->beginTraceSection(Ljava/lang/String;)V

    .line 274
    const-string v0, "bulkInsert"

    invoke-direct {p0, v0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->logUsage(Ljava/lang/String;)V

    .line 276
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->ensureInitializedAndEnforcePermissions()V

    .line 277
    invoke-virtual {p0, p1, p2}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->doBulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 279
    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    throw v0
.end method

.method public final call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 285
    const-string v0, "call"

    invoke-direct {p0, v0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->beginTraceSection(Ljava/lang/String;)V

    .line 286
    const-string v0, "call"

    invoke-direct {p0, v0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->logUsage(Ljava/lang/String;)V

    .line 288
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->ensureInitializedAndEnforcePermissions()V

    .line 289
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->doCall(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 291
    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    throw v0
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 297
    const-string v0, "delete"

    invoke-direct {p0, v0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->beginTraceSection(Ljava/lang/String;)V

    .line 298
    const-string v0, "delete"

    invoke-direct {p0, v0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->logUsage(Ljava/lang/String;)V

    .line 300
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->ensureInitializedAndEnforcePermissions()V

    .line 301
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->doDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 303
    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    throw v0
.end method

.method protected doApplyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    return-object v0
.end method

.method protected doBulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 1

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method protected doCall(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract doDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method protected doGetStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract doGetType(Landroid/net/Uri;)Ljava/lang/String;
.end method

.method protected abstract doInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method protected doIsTemporary()Z
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Landroid/content/ContentProvider;->isTemporary()Z

    move-result v0

    return v0
.end method

.method protected doOnConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method protected doOnLowMemory()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method protected doOnTrimMemory(I)V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method protected doOpenAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected doOpenFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected doOpenTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method protected doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/os/CancellationSignal;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 148
    invoke-virtual/range {p0 .. p5}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected doShutdown()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method protected abstract doUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method protected final ensureInitialized()V
    .locals 3

    .prologue
    .line 222
    iget-object v1, p0, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->onInitialize()V

    .line 225
    iget-object v0, p0, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 227
    :cond_0
    monitor-exit v1

    .line 228
    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final ensureInitializedAndEnforceOpenFilePermissions(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 251
    const-string v0, "w"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->ensureInitializedAndEnforcePermissions()V

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->ensureInitializedAndEnforceReadOnlyPermissions()V

    goto :goto_0
.end method

.method protected final ensureInitializedAndEnforcePermissions()V
    .locals 2

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->ensureInitialized()V

    .line 232
    invoke-virtual {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->allowOwnCallingProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->isOwnCallingProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    :cond_0
    return-void

    .line 235
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->onCheckPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Component access not allowed."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final ensureInitializedAndEnforceReadOnlyPermissions()V
    .locals 2

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->ensureInitialized()V

    .line 242
    invoke-virtual {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->allowOwnCallingProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->isOwnCallingProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    :cond_0
    return-void

    .line 245
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->onCheckReadOnlyPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Component access not allowed."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getLogger()Lcom/facebook/secure/logger/ContentProviderLogger;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    const-string v0, "getStreamTypes"

    invoke-direct {p0, v0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->beginTraceSection(Ljava/lang/String;)V

    .line 323
    const-string v0, "getStreamTypes"

    invoke-direct {p0, v0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->logUsage(Ljava/lang/String;)V

    .line 325
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->ensureInitializedAndEnforceReadOnlyPermissions()V

    .line 326
    invoke-virtual {p0, p1, p2}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->doGetStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 328
    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    throw v0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    const-string v0, "getType"

    invoke-direct {p0, v0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->beginTraceSection(Ljava/lang/String;)V

    .line 335
    const-string v0, "getType"

    invoke-direct {p0, v0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->logUsage(Ljava/lang/String;)V

    .line 337
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->ensureInitializedAndEnforceReadOnlyPermissions()V

    .line 338
    invoke-virtual {p0, p1}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->doGetType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 340
    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    throw v0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 346
    const-string v0, "insert"

    invoke-direct {p0, v0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->beginTraceSection(Ljava/lang/String;)V

    .line 347
    const-string v0, "insert"

    invoke-direct {p0, v0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->logUsage(Ljava/lang/String;)V

    .line 349
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->ensureInitializedAndEnforcePermissions()V

    .line 350
    invoke-virtual {p0, p1, p2}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->doInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 352
    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    throw v0
.end method

.method protected isOwnCallingProcess()Z
    .locals 2

    .prologue
    .line 536
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 537
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 538
    const/4 v0, 0x1

    .line 540
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final isTemporary()Z
    .locals 1

    .prologue
    .line 442
    const-string v0, "isTemporary"

    invoke-direct {p0, v0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->beginTraceSection(Ljava/lang/String;)V

    .line 444
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->ensureInitializedAndEnforceReadOnlyPermissions()V

    .line 445
    invoke-virtual {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->doIsTemporary()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 447
    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    throw v0
.end method

.method protected onCheckPermissions()Z
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method protected onCheckReadOnlyPermissions()Z
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->onCheckPermissions()Z

    move-result v0

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 453
    const-string v0, "onConfigurationChanged"

    invoke-direct {p0, v0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->beginTraceSection(Ljava/lang/String;)V

    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 462
    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    .line 464
    :goto_0
    return-void

    .line 459
    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 460
    invoke-virtual {p0, p1}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->doOnConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    throw v0
.end method

.method public final onCreate()Z
    .locals 1

    .prologue
    .line 263
    const-string v0, "onCreate"

    invoke-direct {p0, v0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->beginTraceSection(Ljava/lang/String;)V

    .line 265
    const/4 v0, 0x1

    .line 267
    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    return v0
.end method

.method protected onInitialize()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public final onLowMemory()V
    .locals 1

    .prologue
    .line 499
    const-string v0, "onLowMemory"

    invoke-direct {p0, v0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->beginTraceSection(Ljava/lang/String;)V

    .line 501
    :try_start_0
    iget-object v0, p0, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 510
    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    .line 512
    :goto_0
    return-void

    .line 507
    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/content/ContentProvider;->onLowMemory()V

    .line 508
    invoke-virtual {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->doOnLowMemory()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 510
    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    throw v0
.end method

.method public final onTrimMemory(I)V
    .locals 1

    .prologue
    .line 482
    const-string v0, "onTrimMemory"

    invoke-direct {p0, v0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->beginTraceSection(Ljava/lang/String;)V

    .line 484
    :try_start_0
    iget-object v0, p0, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 493
    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    .line 495
    :goto_0
    return-void

    .line 490
    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->onTrimMemory(I)V

    .line 491
    invoke-virtual {p0, p1}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->doOnTrimMemory(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 493
    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    throw v0
.end method

.method public final openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 359
    const-string v0, "openAssetFile"

    invoke-direct {p0, v0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->beginTraceSection(Ljava/lang/String;)V

    .line 360
    const-string v0, "openAssetFile"

    invoke-direct {p0, v0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->logUsage(Ljava/lang/String;)V

    .line 362
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->ensureInitializedAndEnforceOpenFilePermissions(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->doOpenAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 365
    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    throw v0
.end method

.method public final openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 371
    const-string v0, "openFile"

    invoke-direct {p0, v0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->beginTraceSection(Ljava/lang/String;)V

    .line 372
    const-string v0, "openFile"

    invoke-direct {p0, v0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->logUsage(Ljava/lang/String;)V

    .line 374
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->ensureInitializedAndEnforceOpenFilePermissions(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0, p1, p2}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->doOpenFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 377
    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    throw v0
.end method

.method public final openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 384
    const-string v0, "openTypedAssetFile"

    invoke-direct {p0, v0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->beginTraceSection(Ljava/lang/String;)V

    .line 385
    const-string v0, "openTypedAssetFile"

    invoke-direct {p0, v0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->logUsage(Ljava/lang/String;)V

    .line 388
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->ensureInitializedAndEnforceReadOnlyPermissions()V

    .line 389
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->doOpenTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 391
    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    throw v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 398
    const-string v0, "query"

    invoke-direct {p0, v0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->beginTraceSection(Ljava/lang/String;)V

    .line 399
    const-string v0, "query"

    invoke-direct {p0, v0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->logUsage(Ljava/lang/String;)V

    .line 401
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->ensureInitializedAndEnforceReadOnlyPermissions()V

    .line 402
    invoke-virtual/range {p0 .. p5}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 404
    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    throw v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/os/CancellationSignal;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 417
    const-string v0, "query"

    invoke-direct {p0, v0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->beginTraceSection(Ljava/lang/String;)V

    .line 418
    const-string v0, "query"

    invoke-direct {p0, v0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->logUsage(Ljava/lang/String;)V

    .line 420
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->ensureInitializedAndEnforceReadOnlyPermissions()V

    .line 421
    invoke-virtual/range {p0 .. p6}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 423
    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    throw v0
.end method

.method public final shutdown()V
    .locals 1

    .prologue
    .line 468
    const-string v0, "shutdown"

    invoke-direct {p0, v0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->beginTraceSection(Ljava/lang/String;)V

    .line 470
    :try_start_0
    iget-object v0, p0, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 476
    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    .line 478
    :goto_0
    return-void

    .line 474
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->doShutdown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    throw v0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 430
    const-string v0, "update"

    invoke-direct {p0, v0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->beginTraceSection(Ljava/lang/String;)V

    .line 431
    const-string v0, "update"

    invoke-direct {p0, v0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->logUsage(Ljava/lang/String;)V

    .line 433
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->ensureInitializedAndEnforcePermissions()V

    .line 434
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->doUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 436
    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;->endTraceSection()V

    throw v0
.end method
