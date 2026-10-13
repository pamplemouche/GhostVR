.class public Lcom/oculus/video/upstream/OculusHttpDataSourceFactory;
.super Lcom/oculus/android/exoplayer2/upstream/HttpDataSource$BaseFactory;
.source "OculusHttpDataSourceFactory.java"


# instance fields
.field private final allowCrossProtocolRedirects:Z

.field private final connectTimeoutMillis:I

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

.field private final readTimeoutMillis:I

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oculus/android/exoplayer2/upstream/TransferListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/oculus/android/exoplayer2/upstream/DataSource;",
            ">;)V"
        }
    .end annotation

    const/16 v3, 0x1f40

    const/16 v4, 0x1f40

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 17
    invoke-direct/range {v0 .. v5}, Lcom/oculus/video/upstream/OculusHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/oculus/android/exoplayer2/upstream/TransferListener;IIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/oculus/android/exoplayer2/upstream/TransferListener;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/oculus/android/exoplayer2/upstream/DataSource;",
            ">;IIZ)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Lcom/oculus/android/exoplayer2/upstream/HttpDataSource$BaseFactory;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/oculus/video/upstream/OculusHttpDataSourceFactory;->userAgent:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/oculus/video/upstream/OculusHttpDataSourceFactory;->listener:Lcom/oculus/android/exoplayer2/upstream/TransferListener;

    .line 30
    iput p3, p0, Lcom/oculus/video/upstream/OculusHttpDataSourceFactory;->connectTimeoutMillis:I

    .line 31
    iput p4, p0, Lcom/oculus/video/upstream/OculusHttpDataSourceFactory;->readTimeoutMillis:I

    .line 32
    iput-boolean p5, p0, Lcom/oculus/video/upstream/OculusHttpDataSourceFactory;->allowCrossProtocolRedirects:Z

    return-void
.end method


# virtual methods
.method protected createDataSourceInternal(Lcom/oculus/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)Lcom/oculus/android/exoplayer2/upstream/HttpDataSource;
    .locals 9

    .line 38
    new-instance v8, Lcom/oculus/video/upstream/OculusHttpDataSource;

    iget-object v1, p0, Lcom/oculus/video/upstream/OculusHttpDataSourceFactory;->userAgent:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/video/upstream/OculusHttpDataSourceFactory;->listener:Lcom/oculus/android/exoplayer2/upstream/TransferListener;

    iget v4, p0, Lcom/oculus/video/upstream/OculusHttpDataSourceFactory;->connectTimeoutMillis:I

    iget v5, p0, Lcom/oculus/video/upstream/OculusHttpDataSourceFactory;->readTimeoutMillis:I

    iget-boolean v6, p0, Lcom/oculus/video/upstream/OculusHttpDataSourceFactory;->allowCrossProtocolRedirects:Z

    const/4 v2, 0x0

    move-object v0, v8

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/oculus/video/upstream/OculusHttpDataSource;-><init>(Ljava/lang/String;Lcom/oculus/android/exoplayer2/util/Predicate;Lcom/oculus/android/exoplayer2/upstream/TransferListener;IIZLcom/oculus/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V

    return-object v8
.end method
