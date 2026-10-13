.class public Lorg/chromium/components/download/DownloadCollectionBridge;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Lorg/chromium/components/download/DownloadCollectionBridge;

.field public static final b:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/components/download/DownloadCollectionBridge;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lorg/chromium/components/download/DownloadCollectionBridge;
    .locals 2

    .line 1
    sget-object v0, Lorg/chromium/components/download/DownloadCollectionBridge;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lorg/chromium/components/download/DownloadCollectionBridge;->a:Lorg/chromium/components/download/DownloadCollectionBridge;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lorg/chromium/components/download/DownloadCollectionBridge;

    invoke-direct {v1}, Lorg/chromium/components/download/DownloadCollectionBridge;-><init>()V

    sput-object v1, Lorg/chromium/components/download/DownloadCollectionBridge;->a:Lorg/chromium/components/download/DownloadCollectionBridge;

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    sget-object v0, Lorg/chromium/components/download/DownloadCollectionBridge;->a:Lorg/chromium/components/download/DownloadCollectionBridge;

    return-object v0

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static a(Lorg/chromium/components/download/DownloadCollectionBridge;)V
    .locals 1

    .line 7
    sget-object v0, Lorg/chromium/components/download/DownloadCollectionBridge;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_0
    sput-object p0, Lorg/chromium/components/download/DownloadCollectionBridge;->a:Lorg/chromium/components/download/DownloadCollectionBridge;

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static copyFileToIntermediateUri(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {}, Lorg/chromium/components/download/DownloadCollectionBridge;->a()Lorg/chromium/components/download/DownloadCollectionBridge;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method public static createIntermediateUriForPublish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {}, Lorg/chromium/components/download/DownloadCollectionBridge;->a()Lorg/chromium/components/download/DownloadCollectionBridge;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    return-object p1

    .line 2
    :cond_0
    throw p1
.end method

.method public static deleteIntermediateUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lorg/chromium/components/download/DownloadCollectionBridge;->a()Lorg/chromium/components/download/DownloadCollectionBridge;

    move-result-object p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method public static fileNameExists(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {}, Lorg/chromium/components/download/DownloadCollectionBridge;->a()Lorg/chromium/components/download/DownloadCollectionBridge;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method public static getDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/components/download/DownloadCollectionBridge;->a()Lorg/chromium/components/download/DownloadCollectionBridge;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    throw v0
.end method

.method public static getDisplayNamesForDownloads()[Lorg/chromium/components/download/DownloadCollectionBridge$DisplayNameInfo;
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/components/download/DownloadCollectionBridge;->a()Lorg/chromium/components/download/DownloadCollectionBridge;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    throw v1
.end method

.method public static needToRetrieveDisplayNames()Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/components/download/DownloadCollectionBridge;->a()Lorg/chromium/components/download/DownloadCollectionBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public static openIntermediateUri(Ljava/lang/String;)I
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v1, "rw"

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    .line 4
    invoke-static {}, Lorg/chromium/components/download/DownloadCollectionBridge;->a()Lorg/chromium/components/download/DownloadCollectionBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    .line 6
    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "DownloadCollection"

    const-string v1, "Cannot open intermediate Uri."

    .line 7
    invoke-static {p0, v1, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static publishDownload(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/components/download/DownloadCollectionBridge;->a()Lorg/chromium/components/download/DownloadCollectionBridge;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    throw v0
.end method

.method public static renameDownloadUri(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {}, Lorg/chromium/components/download/DownloadCollectionBridge;->a()Lorg/chromium/components/download/DownloadCollectionBridge;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method public static shouldPublishDownload(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {}, Lorg/chromium/components/download/DownloadCollectionBridge;->a()Lorg/chromium/components/download/DownloadCollectionBridge;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x0

    .line 2
    throw p0
.end method
