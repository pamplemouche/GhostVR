.class public Lcom/oculus/downloader/progress/model/DownloadProgressUnit;
.super Ljava/lang/Object;
.source "DownloadProgressUnit.java"


# instance fields
.field private mApkItem:Lcom/oculus/downloader/progress/model/DownloadProgressItem;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mAssetItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/oculus/downloader/progress/model/DownloadProgressItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mObbItem:Lcom/oculus/downloader/progress/model/DownloadProgressItem;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/oculus/downloader/progress/model/DownloadProgressUnit;->mPackageName:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getApkItem()Lcom/oculus/downloader/progress/model/DownloadProgressItem;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oculus/downloader/progress/model/DownloadProgressUnit;->mApkItem:Lcom/oculus/downloader/progress/model/DownloadProgressItem;

    return-object v0
.end method

.method public getAssetItems()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/oculus/downloader/progress/model/DownloadProgressItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oculus/downloader/progress/model/DownloadProgressUnit;->mAssetItems:Ljava/util/Map;

    return-object v0
.end method

.method public declared-synchronized getCurrentBytes()J
    .locals 5

    .prologue
    .line 49
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 50
    :try_start_0
    iget-object v2, p0, Lcom/oculus/downloader/progress/model/DownloadProgressUnit;->mApkItem:Lcom/oculus/downloader/progress/model/DownloadProgressItem;

    if-eqz v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/oculus/downloader/progress/model/DownloadProgressUnit;->mApkItem:Lcom/oculus/downloader/progress/model/DownloadProgressItem;

    invoke-virtual {v2}, Lcom/oculus/downloader/progress/model/DownloadProgressItem;->getCurrentBytes()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 53
    :cond_0
    iget-object v2, p0, Lcom/oculus/downloader/progress/model/DownloadProgressUnit;->mObbItem:Lcom/oculus/downloader/progress/model/DownloadProgressItem;

    if-eqz v2, :cond_1

    .line 54
    iget-object v2, p0, Lcom/oculus/downloader/progress/model/DownloadProgressUnit;->mObbItem:Lcom/oculus/downloader/progress/model/DownloadProgressItem;

    invoke-virtual {v2}, Lcom/oculus/downloader/progress/model/DownloadProgressItem;->getCurrentBytes()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 56
    :cond_1
    iget-object v2, p0, Lcom/oculus/downloader/progress/model/DownloadProgressUnit;->mAssetItems:Ljava/util/Map;

    if-eqz v2, :cond_3

    .line 57
    iget-object v2, p0, Lcom/oculus/downloader/progress/model/DownloadProgressUnit;->mAssetItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/downloader/progress/model/DownloadProgressItem;

    .line 58
    invoke-virtual {v0}, Lcom/oculus/downloader/progress/model/DownloadProgressItem;->getCurrentBytes()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    add-long/2addr v2, v0

    .line 59
    goto :goto_0

    :cond_2
    move-wide v0, v2

    .line 62
    :cond_3
    monitor-exit p0

    return-wide v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getObbItem()Lcom/oculus/downloader/progress/model/DownloadProgressItem;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oculus/downloader/progress/model/DownloadProgressUnit;->mObbItem:Lcom/oculus/downloader/progress/model/DownloadProgressItem;

    return-object v0
.end method

.method public declared-synchronized getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oculus/downloader/progress/model/DownloadProgressUnit;->mPackageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStatus()I
    .locals 4

    .prologue
    .line 93
    monitor-enter p0

    const/16 v1, 0x10

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/oculus/downloader/progress/model/DownloadProgressUnit;->mApkItem:Lcom/oculus/downloader/progress/model/DownloadProgressItem;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/oculus/downloader/progress/model/DownloadProgressUnit;->mApkItem:Lcom/oculus/downloader/progress/model/DownloadProgressItem;

    invoke-virtual {v0}, Lcom/oculus/downloader/progress/model/DownloadProgressItem;->getStatus()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/oculus/downloader/progress/model/DownloadProgressUnit;->mApkItem:Lcom/oculus/downloader/progress/model/DownloadProgressItem;

    invoke-virtual {v0}, Lcom/oculus/downloader/progress/model/DownloadProgressItem;->getStatus()I

    move-result v1

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/oculus/downloader/progress/model/DownloadProgressUnit;->mObbItem:Lcom/oculus/downloader/progress/model/DownloadProgressItem;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/oculus/downloader/progress/model/DownloadProgressUnit;->mObbItem:Lcom/oculus/downloader/progress/model/DownloadProgressItem;

    invoke-virtual {v0}, Lcom/oculus/downloader/progress/model/DownloadProgressItem;->getStatus()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/oculus/downloader/progress/model/DownloadProgressUnit;->mObbItem:Lcom/oculus/downloader/progress/model/DownloadProgressItem;

    invoke-virtual {v0}, Lcom/oculus/downloader/progress/model/DownloadProgressItem;->getStatus()I

    move-result v1

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/oculus/downloader/progress/model/DownloadProgressUnit;->mAssetItems:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/oculus/downloader/progress/model/DownloadProgressUnit;->mAssetItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/downloader/progress/model/DownloadProgressItem;

    .line 106
    invoke-virtual {v0}, Lcom/oculus/downloader/progress/model/DownloadProgressItem;->getStatus()I

    move-result v3

    if-ge v3, v1, :cond_3

    .line 107
    invoke-virtual {v0}, Lcom/oculus/downloader/progress/model/DownloadProgressItem;->getStatus()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_1
    move v1, v0

    .line 109
    goto :goto_0

    .line 111
    :cond_2
    monitor-exit p0

    return v1

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public declared-synchronized getTotalBytes()J
    .locals 5

    .prologue
    .line 66
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 67
    :try_start_0
    iget-object v2, p0, Lcom/oculus/downloader/progress/model/DownloadProgressUnit;->mApkItem:Lcom/oculus/downloader/progress/model/DownloadProgressItem;

    if-eqz v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/oculus/downloader/progress/model/DownloadProgressUnit;->mApkItem:Lcom/oculus/downloader/progress/model/DownloadProgressItem;

    invoke-virtual {v2}, Lcom/oculus/downloader/progress/model/DownloadProgressItem;->getTotalBytes()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 70
    :cond_0
    iget-object v2, p0, Lcom/oculus/downloader/progress/model/DownloadProgressUnit;->mObbItem:Lcom/oculus/downloader/progress/model/DownloadProgressItem;

    if-eqz v2, :cond_1

    .line 71
    iget-object v2, p0, Lcom/oculus/downloader/progress/model/DownloadProgressUnit;->mObbItem:Lcom/oculus/downloader/progress/model/DownloadProgressItem;

    invoke-virtual {v2}, Lcom/oculus/downloader/progress/model/DownloadProgressItem;->getTotalBytes()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 73
    :cond_1
    iget-object v2, p0, Lcom/oculus/downloader/progress/model/DownloadProgressUnit;->mAssetItems:Ljava/util/Map;

    if-eqz v2, :cond_3

    .line 74
    iget-object v2, p0, Lcom/oculus/downloader/progress/model/DownloadProgressUnit;->mAssetItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/downloader/progress/model/DownloadProgressItem;

    .line 75
    invoke-virtual {v0}, Lcom/oculus/downloader/progress/model/DownloadProgressItem;->getTotalBytes()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    add-long/2addr v2, v0

    .line 76
    goto :goto_0

    :cond_2
    move-wide v0, v2

    .line 79
    :cond_3
    monitor-exit p0

    return-wide v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setApkItem(Lcom/oculus/downloader/progress/model/DownloadProgressItem;)V
    .locals 0
    .param p1    # Lcom/oculus/downloader/progress/model/DownloadProgressItem;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 22
    iput-object p1, p0, Lcom/oculus/downloader/progress/model/DownloadProgressUnit;->mApkItem:Lcom/oculus/downloader/progress/model/DownloadProgressItem;

    .line 23
    return-void
.end method

.method public setAssetItems(Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/oculus/downloader/progress/model/DownloadProgressItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    iput-object p1, p0, Lcom/oculus/downloader/progress/model/DownloadProgressUnit;->mAssetItems:Ljava/util/Map;

    .line 31
    return-void
.end method

.method public setObbItem(Lcom/oculus/downloader/progress/model/DownloadProgressItem;)V
    .locals 0
    .param p1    # Lcom/oculus/downloader/progress/model/DownloadProgressItem;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 26
    iput-object p1, p0, Lcom/oculus/downloader/progress/model/DownloadProgressUnit;->mObbItem:Lcom/oculus/downloader/progress/model/DownloadProgressItem;

    .line 27
    return-void
.end method
