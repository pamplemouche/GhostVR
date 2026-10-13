.class public final Lcom/oculus/video/upstream/OculusDataSourceFactory;
.super Ljava/lang/Object;
.source "OculusDataSourceFactory.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;


# instance fields
.field private final baseDataSourceFactory:Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;

.field private final cacheDataSourceCallback:Lcom/oculus/video/upstream/OculusCacheDataSource$Callback;

.field private final context:Landroid/content/Context;

.field private final listener:Lcom/oculus/android/exoplayer2/upstream/TransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oculus/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/oculus/android/exoplayer2/upstream/DataSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oculus/android/exoplayer2/upstream/TransferListener;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;Lcom/oculus/video/upstream/OculusCacheDataSource$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oculus/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/oculus/android/exoplayer2/upstream/DataSource;",
            ">;",
            "Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;",
            "Lcom/oculus/video/upstream/OculusCacheDataSource$Callback;",
            ")V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/video/upstream/OculusDataSourceFactory;->context:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/oculus/video/upstream/OculusDataSourceFactory;->listener:Lcom/oculus/android/exoplayer2/upstream/TransferListener;

    .line 53
    iput-object p3, p0, Lcom/oculus/video/upstream/OculusDataSourceFactory;->baseDataSourceFactory:Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;

    .line 54
    iput-object p4, p0, Lcom/oculus/video/upstream/OculusDataSourceFactory;->cacheDataSourceCallback:Lcom/oculus/video/upstream/OculusCacheDataSource$Callback;

    return-void
.end method


# virtual methods
.method public createDataSource()Lcom/oculus/android/exoplayer2/upstream/DataSource;
    .locals 7

    .line 59
    new-instance v1, Lcom/oculus/video/upstream/OculusDefaultDataSource;

    iget-object v0, p0, Lcom/oculus/video/upstream/OculusDataSourceFactory;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/oculus/video/upstream/OculusDataSourceFactory;->listener:Lcom/oculus/android/exoplayer2/upstream/TransferListener;

    iget-object v3, p0, Lcom/oculus/video/upstream/OculusDataSourceFactory;->baseDataSourceFactory:Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;

    .line 60
    invoke-interface {v3}, Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/oculus/android/exoplayer2/upstream/DataSource;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/oculus/video/upstream/OculusDefaultDataSource;-><init>(Landroid/content/Context;Lcom/oculus/android/exoplayer2/upstream/TransferListener;Lcom/oculus/android/exoplayer2/upstream/DataSource;)V

    .line 61
    iget-object v0, p0, Lcom/oculus/video/upstream/OculusDataSourceFactory;->cacheDataSourceCallback:Lcom/oculus/video/upstream/OculusCacheDataSource$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oculus/video/upstream/OculusCacheDataSource$Callback;->getCache()Lcom/oculus/android/exoplayer2/upstream/cache/Cache;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v6, Lcom/oculus/video/upstream/OculusCacheDataSource;

    const/4 v2, 0x2

    const-wide/32 v3, 0x200000

    iget-object v5, p0, Lcom/oculus/video/upstream/OculusDataSourceFactory;->cacheDataSourceCallback:Lcom/oculus/video/upstream/OculusCacheDataSource$Callback;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/oculus/video/upstream/OculusCacheDataSource;-><init>(Lcom/oculus/android/exoplayer2/upstream/DataSource;IJLcom/oculus/video/upstream/OculusCacheDataSource$Callback;)V

    move-object v1, v6

    :cond_0
    return-object v1
.end method
