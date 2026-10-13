.class public Lcom/oculus/video/upstream/OculusDefaultDataSource;
.super Lcom/oculus/android/exoplayer2/upstream/DefaultDataSource;
.source "OculusDefaultDataSource.java"


# static fields
.field private static final SCHEME_APK:Ljava/lang/String; = "apk"

.field private static final TAG:Ljava/lang/String; = "OculusDefaultDataSource"


# instance fields
.field private packageDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oculus/android/exoplayer2/upstream/TransferListener;Lcom/oculus/android/exoplayer2/upstream/DataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oculus/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/oculus/android/exoplayer2/upstream/DataSource;",
            ">;",
            "Lcom/oculus/android/exoplayer2/upstream/DataSource;",
            ")V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/android/exoplayer2/upstream/DefaultDataSource;-><init>(Landroid/content/Context;Lcom/oculus/android/exoplayer2/upstream/TransferListener;Lcom/oculus/android/exoplayer2/upstream/DataSource;)V

    return-void
.end method

.method private getOculusPackageDataSource()Lcom/oculus/android/exoplayer2/upstream/DataSource;
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/oculus/video/upstream/OculusDefaultDataSource;->packageDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/oculus/video/upstream/OculusPackageDataSource;

    iget-object v1, p0, Lcom/oculus/video/upstream/OculusDefaultDataSource;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/oculus/video/upstream/OculusDefaultDataSource;->listener:Lcom/oculus/android/exoplayer2/upstream/TransferListener;

    invoke-direct {v0, v1, v2}, Lcom/oculus/video/upstream/OculusPackageDataSource;-><init>(Landroid/content/Context;Lcom/oculus/android/exoplayer2/upstream/TransferListener;)V

    iput-object v0, p0, Lcom/oculus/video/upstream/OculusDefaultDataSource;->packageDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/upstream/OculusDefaultDataSource;->packageDataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    return-object v0
.end method


# virtual methods
.method public open(Lcom/oculus/android/exoplayer2/upstream/DataSpec;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/oculus/video/upstream/OculusDefaultDataSource;->dataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 63
    iget-object v0, p1, Lcom/oculus/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "apk"

    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    invoke-direct {p0}, Lcom/oculus/video/upstream/OculusDefaultDataSource;->getOculusPackageDataSource()Lcom/oculus/android/exoplayer2/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/video/upstream/OculusDefaultDataSource;->dataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    .line 66
    iget-object v0, p0, Lcom/oculus/video/upstream/OculusDefaultDataSource;->dataSource:Lcom/oculus/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1}, Lcom/oculus/android/exoplayer2/upstream/DataSource;->open(Lcom/oculus/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v0

    return-wide v0

    .line 68
    :cond_1
    invoke-super {p0, p1}, Lcom/oculus/android/exoplayer2/upstream/DefaultDataSource;->open(Lcom/oculus/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v0

    return-wide v0
.end method
