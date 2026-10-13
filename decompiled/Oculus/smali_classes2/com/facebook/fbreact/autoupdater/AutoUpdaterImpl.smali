.class public Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;
.super Ljava/lang/Object;
.source "AutoUpdaterImpl.java"

# interfaces
.implements Lcom/facebook/fbreact/autoupdater/AutoUpdater;


# static fields
.field protected static sActivatedBundle:Lcom/facebook/fbreact/autoupdater/OtaBundle;

.field private static sInstance:Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field protected mLogger:Lcom/facebook/fbreact/autoupdater/logging/AutoUpdaterLogger;

.field protected mOtaInfo:Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;

.field protected mRequiredResources:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mStorage:Lcom/facebook/fbreact/autoupdater/Storage;

.field protected mUpdateStatus:Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    sput-object v0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->sActivatedBundle:Lcom/facebook/fbreact/autoupdater/OtaBundle;

    .line 29
    sput-object v0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->sInstance:Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;

    return-void
.end method

.method private activateNewBundle()Lcom/facebook/fbreact/autoupdater/OtaBundle;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0}, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->getDeveloperBundle()Lcom/facebook/fbreact/autoupdater/OtaBundle;

    move-result-object v1

    .line 167
    if-eqz v1, :cond_1

    .line 168
    invoke-direct {p0, v1}, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->verifyAndMarkActive(Lcom/facebook/fbreact/autoupdater/OtaBundle;)Lcom/facebook/fbreact/autoupdater/OtaBundle;

    move-result-object v0

    .line 183
    :cond_0
    :goto_0
    return-object v0

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mOtaInfo:Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;

    invoke-virtual {v1}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->getNextBundle()I

    move-result v1

    .line 172
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 174
    iget-object v1, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mOtaInfo:Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;

    invoke-virtual {v1}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->clearActivated()V

    goto :goto_0

    .line 178
    :cond_2
    if-eqz v1, :cond_0

    .line 182
    new-instance v0, Lcom/facebook/fbreact/autoupdater/OtaBundle;

    iget-object v2, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mStorage:Lcom/facebook/fbreact/autoupdater/Storage;

    invoke-direct {v0, v2, v1}, Lcom/facebook/fbreact/autoupdater/OtaBundle;-><init>(Lcom/facebook/fbreact/autoupdater/Storage;I)V

    .line 183
    invoke-direct {p0, v0}, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->verifyAndMarkActive(Lcom/facebook/fbreact/autoupdater/OtaBundle;)Lcom/facebook/fbreact/autoupdater/OtaBundle;

    move-result-object v0

    goto :goto_0
.end method

.method private getExistingBundle()Lcom/facebook/fbreact/autoupdater/OtaBundle;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 250
    iget-object v1, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mOtaInfo:Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;

    invoke-virtual {v1}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->getActivatedBundle()I

    move-result v2

    .line 251
    if-nez v2, :cond_0

    .line 266
    :goto_0
    return-object v0

    .line 255
    :cond_0
    new-instance v1, Lcom/facebook/fbreact/autoupdater/OtaBundle;

    iget-object v3, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mStorage:Lcom/facebook/fbreact/autoupdater/Storage;

    invoke-direct {v1, v3, v2}, Lcom/facebook/fbreact/autoupdater/OtaBundle;-><init>(Lcom/facebook/fbreact/autoupdater/Storage;I)V

    .line 257
    iget-object v2, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mRequiredResources:Ljava/util/Set;

    invoke-virtual {v1, v2}, Lcom/facebook/fbreact/autoupdater/OtaBundle;->ensureResources(Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    invoke-direct {p0, v1}, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->verifyActiveBundleSize(Lcom/facebook/fbreact/autoupdater/ResourceBundle;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mStorage:Lcom/facebook/fbreact/autoupdater/Storage;

    iget-object v2, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mOtaInfo:Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;

    invoke-virtual {v1, v2}, Lcom/facebook/fbreact/autoupdater/Storage;->cleanActivatedUpdateFolder(Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;)V

    .line 263
    iget-object v1, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mOtaInfo:Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;

    invoke-virtual {v1}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->clearActivated()V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 266
    goto :goto_0
.end method

.method public static getInstance()Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 44
    const-class v1, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->sInstance:Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;

    if-nez v0, :cond_0

    .line 46
    const-string v0, "AutoUpdaterImpl"

    const-string v2, "AutoUpdaterImpl shared instance was not initialized"

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    sget-object v0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->sInstance:Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;

    monitor-exit v1

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private verifyActiveBundleSize(Lcom/facebook/fbreact/autoupdater/ResourceBundle;)Z
    .locals 9

    .prologue
    const-wide/16 v4, -0x1

    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 270
    iget-object v1, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mOtaInfo:Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;

    invoke-virtual {v1}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->getActivatedBundle()I

    move-result v1

    .line 271
    iget-object v2, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mOtaInfo:Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;

    invoke-virtual {v2}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->getActiveBundleSize()J

    move-result-wide v2

    .line 272
    cmp-long v7, v2, v4

    if-nez v7, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v0

    .line 276
    :cond_1
    const-string v7, "main.jsbundle"

    invoke-interface {p1, v7}, Lcom/facebook/fbreact/autoupdater/ResourceBundle;->getResource(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 277
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    move-object v0, p0

    .line 278
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->onFailedVerifyActivatedBundle(IJJ)V

    move v0, v6

    .line 280
    goto :goto_0

    .line 283
    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 284
    cmp-long v7, v2, v4

    if-eqz v7, :cond_0

    move-object v0, p0

    .line 285
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->onFailedVerifyActivatedBundle(IJJ)V

    move v0, v6

    .line 286
    goto :goto_0
.end method

.method private verifyAndMarkActive(Lcom/facebook/fbreact/autoupdater/OtaBundle;)Lcom/facebook/fbreact/autoupdater/OtaBundle;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 188
    iget-object v1, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mRequiredResources:Ljava/util/Set;

    invoke-virtual {p1, v1}, Lcom/facebook/fbreact/autoupdater/OtaBundle;->ensureResources(Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->verifyNextBundleSize(Lcom/facebook/fbreact/autoupdater/ResourceBundle;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mStorage:Lcom/facebook/fbreact/autoupdater/Storage;

    iget-object v2, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mOtaInfo:Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;

    invoke-virtual {v1, v2}, Lcom/facebook/fbreact/autoupdater/Storage;->cleanPendingUpdatesFolder(Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;)V

    .line 192
    iget-object v1, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mOtaInfo:Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;

    invoke-virtual {v1}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->clearNext()V

    move-object p1, v0

    .line 208
    :goto_0
    return-object p1

    .line 196
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/fbreact/autoupdater/OtaBundle;->getVersion()I

    move-result v1

    .line 198
    :try_start_0
    iget-object v2, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mOtaInfo:Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;

    invoke-virtual {v2}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/common/releng/otaversion/OTAUpdateVersion;->getInstance(Landroid/content/Context;)Lcom/facebook/common/releng/otaversion/OTAUpdateVersion;

    move-result-object v2

    .line 199
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/common/releng/otaversion/OTAUpdateVersion;->storeOTAVersion(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    iget-object v0, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mOtaInfo:Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;

    invoke-virtual {v0, v1}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->markBundleAsActive(I)V

    .line 204
    iget-object v0, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mOtaInfo:Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;

    invoke-virtual {v0, p1}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->persistActiveBundleSize(Lcom/facebook/fbreact/autoupdater/ResourceBundle;)V

    .line 205
    iget-object v0, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mOtaInfo:Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;

    invoke-virtual {v0}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->clearNext()V

    .line 207
    invoke-virtual {p1}, Lcom/facebook/fbreact/autoupdater/OtaBundle;->getVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->postActivateNewBundle(I)V

    goto :goto_0

    .line 200
    :catch_0
    move-exception v1

    move-object p1, v0

    .line 201
    goto :goto_0
.end method

.method private verifyNextBundleSize(Lcom/facebook/fbreact/autoupdater/ResourceBundle;)Z
    .locals 9

    .prologue
    const-wide/16 v4, -0x1

    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 212
    iget-object v1, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mOtaInfo:Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;

    invoke-virtual {v1}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->getNextBundle()I

    move-result v1

    .line 213
    iget-object v2, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mOtaInfo:Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;

    invoke-virtual {v2}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->getNextBundleSize()J

    move-result-wide v2

    .line 214
    cmp-long v7, v2, v4

    if-nez v7, :cond_1

    .line 230
    :cond_0
    :goto_0
    return v0

    .line 218
    :cond_1
    const-string v7, "main.jsbundle"

    invoke-interface {p1, v7}, Lcom/facebook/fbreact/autoupdater/ResourceBundle;->getResource(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 219
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    move-object v0, p0

    .line 220
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->onFailedVerifyNextBundle(IJJ)V

    move v0, v6

    .line 221
    goto :goto_0

    .line 224
    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 225
    cmp-long v7, v2, v4

    if-eqz v7, :cond_0

    move-object v0, p0

    .line 226
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->onFailedVerifyNextBundle(IJJ)V

    move v0, v6

    .line 227
    goto :goto_0
.end method


# virtual methods
.method public getActivatedOtaResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->getActivatedOtaResourceFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 144
    if-nez v0, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 147
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getActivatedOtaResourceFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mOtaInfo:Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;

    invoke-virtual {v0}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->getActivatedBundle()I

    move-result v0

    .line 153
    invoke-virtual {p0}, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->getOtaBundleActivateIfNeeded()Lcom/facebook/fbreact/autoupdater/OtaBundle;

    move-result-object v1

    .line 154
    iget-object v2, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mOtaInfo:Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;

    .line 155
    invoke-virtual {v2}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->getActivatedBundle()I

    move-result v2

    iget-object v3, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mUpdateStatus:Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;

    .line 154
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->reportSoftErrorOnBundleActivationIfNeeded(Lcom/facebook/fbreact/autoupdater/OtaBundle;IILcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;)V

    .line 157
    if-nez v1, :cond_0

    .line 158
    const/4 v0, 0x0

    .line 161
    :goto_0
    return-object v0

    .line 160
    :cond_0
    invoke-virtual {v1, p1}, Lcom/facebook/fbreact/autoupdater/OtaBundle;->getResource(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method protected getDeveloperBundle()Lcom/facebook/fbreact/autoupdater/OtaBundle;
    .locals 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 325
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->isInternalBuild()Z

    move-result v1

    if-nez v1, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-object v0

    .line 330
    :cond_1
    iget-object v1, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mStorage:Lcom/facebook/fbreact/autoupdater/Storage;

    invoke-virtual {v1}, Lcom/facebook/fbreact/autoupdater/Storage;->getDeveloperManifestIfExists()Ljava/io/File;

    move-result-object v1

    .line 331
    if-eqz v1, :cond_0

    .line 334
    const-string v2, "AutoUpdaterImpl"

    const-string v3, "Developer bundle dir present"

    invoke-static {v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :try_start_0
    new-instance v2, Lcom/facebook/fbreact/autoupdater/OtaManifest;

    invoke-direct {v2, v1}, Lcom/facebook/fbreact/autoupdater/OtaManifest;-><init>(Ljava/io/File;)V

    .line 338
    invoke-virtual {v2}, Lcom/facebook/fbreact/autoupdater/OtaManifest;->read()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    invoke-virtual {v2}, Lcom/facebook/fbreact/autoupdater/OtaManifest;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    invoke-virtual {v2}, Lcom/facebook/fbreact/autoupdater/OtaManifest;->getVersion()I

    move-result v3

    .line 347
    const-string v1, "AutoUpdaterImpl"

    const-string v4, "Developer bundle version: %d"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 348
    new-instance v1, Lcom/facebook/fbreact/autoupdater/OtaBundle;

    invoke-virtual {v2}, Lcom/facebook/fbreact/autoupdater/OtaManifest;->getBundleDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/facebook/fbreact/autoupdater/OtaBundle;-><init>(Ljava/io/File;I)V

    .line 349
    iget-object v2, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mRequiredResources:Ljava/util/Set;

    invoke-virtual {v1, v2}, Lcom/facebook/fbreact/autoupdater/OtaBundle;->ensureResources(Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    const-string v0, "AutoUpdaterImpl"

    const-string v2, "Using Developer bundle!"

    invoke-static {v0, v2, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v1

    .line 353
    goto :goto_0

    .line 339
    :catch_0
    move-exception v1

    .line 340
    const-string v2, "AutoUpdaterImpl"

    const-string v3, "Could not read the manifest"

    invoke-static {v2, v1, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getOtaBundleActivateIfNeeded()Lcom/facebook/fbreact/autoupdater/OtaBundle;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 105
    const-class v1, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;

    monitor-enter v1

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mOtaInfo:Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;

    invoke-virtual {v0}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->getActivatedBundle()I

    move-result v0

    .line 107
    iget-object v2, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mUpdateStatus:Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;

    sget-object v3, Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;->NO_BUNDLE_LOADED:Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;

    if-ne v2, v3, :cond_2

    .line 108
    invoke-direct {p0}, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->activateNewBundle()Lcom/facebook/fbreact/autoupdater/OtaBundle;

    move-result-object v2

    sput-object v2, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->sActivatedBundle:Lcom/facebook/fbreact/autoupdater/OtaBundle;

    .line 109
    sget-object v2, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->sActivatedBundle:Lcom/facebook/fbreact/autoupdater/OtaBundle;

    if-eqz v2, :cond_0

    .line 110
    sget-object v2, Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;->USE_NEW_OTA_BUNDLE:Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;

    iput-object v2, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mUpdateStatus:Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;

    .line 111
    sget-object v2, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->sActivatedBundle:Lcom/facebook/fbreact/autoupdater/OtaBundle;

    iget-object v3, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mOtaInfo:Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;

    .line 114
    invoke-virtual {v3}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->getActivatedBundle()I

    move-result v3

    iget-object v4, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mUpdateStatus:Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;

    .line 111
    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->reportSoftErrorOnBundleActivationIfNeeded(Lcom/facebook/fbreact/autoupdater/OtaBundle;IILcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;)V

    .line 116
    sget-object v0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->sActivatedBundle:Lcom/facebook/fbreact/autoupdater/OtaBundle;

    monitor-exit v1

    .line 137
    :goto_0
    return-object v0

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->getExistingBundle()Lcom/facebook/fbreact/autoupdater/OtaBundle;

    move-result-object v2

    sput-object v2, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->sActivatedBundle:Lcom/facebook/fbreact/autoupdater/OtaBundle;

    .line 120
    sget-object v2, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->sActivatedBundle:Lcom/facebook/fbreact/autoupdater/OtaBundle;

    if-eqz v2, :cond_1

    .line 121
    sget-object v2, Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;->USE_EXISTING_OTA_BUNDLE:Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;

    iput-object v2, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mUpdateStatus:Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;

    .line 122
    sget-object v2, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->sActivatedBundle:Lcom/facebook/fbreact/autoupdater/OtaBundle;

    iget-object v3, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mOtaInfo:Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;

    .line 125
    invoke-virtual {v3}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->getActivatedBundle()I

    move-result v3

    iget-object v4, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mUpdateStatus:Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;

    .line 122
    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->reportSoftErrorOnBundleActivationIfNeeded(Lcom/facebook/fbreact/autoupdater/OtaBundle;IILcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;)V

    .line 127
    sget-object v0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->sActivatedBundle:Lcom/facebook/fbreact/autoupdater/OtaBundle;

    monitor-exit v1

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 130
    :cond_1
    :try_start_1
    sget-object v2, Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;->USE_NATIVE:Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;

    iput-object v2, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mUpdateStatus:Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;

    .line 132
    :cond_2
    sget-object v2, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->sActivatedBundle:Lcom/facebook/fbreact/autoupdater/OtaBundle;

    iget-object v3, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mOtaInfo:Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;

    .line 135
    invoke-virtual {v3}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->getActivatedBundle()I

    move-result v3

    iget-object v4, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mUpdateStatus:Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;

    .line 132
    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->reportSoftErrorOnBundleActivationIfNeeded(Lcom/facebook/fbreact/autoupdater/OtaBundle;IILcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;)V

    .line 137
    sget-object v0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->sActivatedBundle:Lcom/facebook/fbreact/autoupdater/OtaBundle;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected onFailedVerifyActivatedBundle(IJJ)V
    .locals 6

    .prologue
    .line 294
    const-string v0, "AutoUpdaterImpl"

    const-string v1, "Activated build %d JS bundle file failed file check: expected file of size %d but was %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 297
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 298
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 299
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 294
    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    return-void
.end method

.method protected onFailedVerifyNextBundle(IJJ)V
    .locals 6

    .prologue
    .line 235
    const-string v0, "AutoUpdaterImpl"

    const-string v1, "Next build %d JS bundle file failed file check: expected file of size %d but was %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 238
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 239
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 240
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 235
    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    return-void
.end method

.method protected postActivateNewBundle(I)V
    .locals 6

    .prologue
    .line 304
    const/4 v0, 0x0

    .line 305
    iget-object v1, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mOtaInfo:Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;

    invoke-virtual {v1}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->getDownloadEndTime()J

    move-result-wide v2

    .line 306
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 308
    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    .line 309
    sub-long v0, v4, v2

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8

    .line 313
    :cond_0
    const-string v1, "AutoUpdaterImpl"

    const-string v2, "Activated %d after %d sec"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 316
    iget-object v1, p0, Lcom/facebook/fbreact/autoupdater/AutoUpdaterImpl;->mLogger:Lcom/facebook/fbreact/autoupdater/logging/AutoUpdaterLogger;

    int-to-long v2, v0

    invoke-interface {v1, p1, v2, v3}, Lcom/facebook/fbreact/autoupdater/logging/AutoUpdaterLogger;->bundleActivated(IJ)V

    .line 317
    return-void
.end method

.method protected reportSoftErrorOnBundleActivationIfNeeded(Lcom/facebook/fbreact/autoupdater/OtaBundle;IILcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;)V
    .locals 0
    .param p1    # Lcom/facebook/fbreact/autoupdater/OtaBundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 247
    return-void
.end method
