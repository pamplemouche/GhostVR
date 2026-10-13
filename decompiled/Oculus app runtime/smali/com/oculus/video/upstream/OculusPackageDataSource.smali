.class public final Lcom/oculus/video/upstream/OculusPackageDataSource;
.super Ljava/lang/Object;
.source "OculusPackageDataSource.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/video/upstream/OculusPackageDataSource$PackageDataSourceException;
    }
.end annotation


# static fields
.field private static final ASSETS_PATH_NAME:Ljava/lang/String; = "assets"


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private bytesRemaining:J

.field private inputStream:Ljava/io/InputStream;

.field private final listener:Lcom/oculus/android/exoplayer2/upstream/TransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oculus/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/oculus/video/upstream/OculusPackageDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private opened:Z

.field private final packageAssetManagers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/res/AssetManager;",
            ">;"
        }
    .end annotation
.end field

.field private final packageManager:Landroid/content/pm/PackageManager;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oculus/android/exoplayer2/upstream/TransferListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oculus/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/oculus/video/upstream/OculusPackageDataSource;",
            ">;)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->packageAssetManagers:Ljava/util/Map;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->assetManager:Landroid/content/res/AssetManager;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->packageManager:Landroid/content/pm/PackageManager;

    .line 71
    iput-object p2, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->listener:Lcom/oculus/android/exoplayer2/upstream/TransferListener;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/video/upstream/OculusPackageDataSource$PackageDataSourceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 171
    :try_start_0
    iget-object v2, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_0
    iput-object v0, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->inputStream:Ljava/io/InputStream;

    .line 178
    iget-boolean v0, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->opened:Z

    if-eqz v0, :cond_1

    .line 179
    iput-boolean v1, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->opened:Z

    .line 180
    iget-object v0, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->listener:Lcom/oculus/android/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_1

    .line 181
    invoke-interface {v0, p0}, Lcom/oculus/android/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 175
    :try_start_1
    new-instance v3, Lcom/oculus/video/upstream/OculusPackageDataSource$PackageDataSourceException;

    invoke-direct {v3, v2}, Lcom/oculus/video/upstream/OculusPackageDataSource$PackageDataSourceException;-><init>(Ljava/lang/Exception;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    :goto_0
    iput-object v0, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->inputStream:Ljava/io/InputStream;

    .line 178
    iget-boolean v0, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->opened:Z

    if-eqz v0, :cond_2

    .line 179
    iput-boolean v1, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->opened:Z

    .line 180
    iget-object v0, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->listener:Lcom/oculus/android/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_2

    .line 181
    invoke-interface {v0, p0}, Lcom/oculus/android/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    :cond_2
    throw v2
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lcom/oculus/android/exoplayer2/upstream/DataSpec;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/video/upstream/OculusPackageDataSource$PackageDataSourceException;
        }
    .end annotation

    .line 77
    :try_start_0
    iget-object v0, p1, Lcom/oculus/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->uri:Landroid/net/Uri;

    .line 78
    iget-object v0, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/assets/"

    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_6

    add-int/lit8 v2, v2, 0x8

    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v2, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->assetManager:Landroid/content/res/AssetManager;

    .line 91
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 92
    iget-object v2, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->packageAssetManagers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->packageAssetManagers:Ljava/util/Map;

    iget-object v3, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->packageManager:Landroid/content/pm/PackageManager;

    .line 95
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 93
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->packageAssetManagers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/res/AssetManager;

    :cond_1
    const/4 v1, 0x1

    .line 100
    invoke-virtual {v2, v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->inputStream:Ljava/io/InputStream;

    .line 101
    iget-object v0, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->inputStream:Ljava/io/InputStream;

    iget-wide v2, p1, Lcom/oculus/android/exoplayer2/upstream/DataSpec;->position:J

    invoke-virtual {v0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 102
    iget-wide v4, p1, Lcom/oculus/android/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_5

    .line 107
    iget-wide v2, p1, Lcom/oculus/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 108
    iget-wide v2, p1, Lcom/oculus/android/exoplayer2/upstream/DataSpec;->length:J

    iput-wide v2, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->bytesRemaining:J

    goto :goto_0

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->bytesRemaining:J

    .line 111
    iget-wide v2, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->bytesRemaining:J

    const-wide/32 v6, 0x7fffffff

    cmp-long v0, v2, v6

    if-nez v0, :cond_3

    .line 115
    iput-wide v4, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->bytesRemaining:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_3
    :goto_0
    iput-boolean v1, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->opened:Z

    .line 123
    iget-object v0, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->listener:Lcom/oculus/android/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_4

    .line 124
    invoke-interface {v0, p0, p1}, Lcom/oculus/android/exoplayer2/upstream/TransferListener;->onTransferStart(Ljava/lang/Object;Lcom/oculus/android/exoplayer2/upstream/DataSpec;)V

    .line 126
    :cond_4
    iget-wide v0, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->bytesRemaining:J

    return-wide v0

    .line 105
    :cond_5
    :try_start_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 84
    :cond_6
    new-instance p1, Lcom/oculus/video/upstream/OculusPackageDataSource$PackageDataSourceException;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected APK URL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/oculus/video/upstream/OculusPackageDataSource$PackageDataSourceException;-><init>(Ljava/lang/Exception;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 119
    :goto_1
    new-instance v0, Lcom/oculus/video/upstream/OculusPackageDataSource$PackageDataSourceException;

    invoke-direct {v0, p1}, Lcom/oculus/video/upstream/OculusPackageDataSource$PackageDataSourceException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/video/upstream/OculusPackageDataSource$PackageDataSourceException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 133
    :cond_0
    iget-wide v0, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    return v4

    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    int-to-long v5, p3

    .line 140
    :try_start_0
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 141
    :goto_0
    iget-object v0, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v4, :cond_4

    .line 147
    iget-wide p1, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->bytesRemaining:J

    cmp-long p3, p1, v2

    if-nez p3, :cond_3

    return v4

    .line 149
    :cond_3
    new-instance p1, Lcom/oculus/video/upstream/OculusPackageDataSource$PackageDataSourceException;

    new-instance p2, Ljava/io/EOFException;

    invoke-direct {p2}, Ljava/io/EOFException;-><init>()V

    invoke-direct {p1, p2}, Lcom/oculus/video/upstream/OculusPackageDataSource$PackageDataSourceException;-><init>(Ljava/lang/Exception;)V

    throw p1

    .line 153
    :cond_4
    iget-wide p2, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->bytesRemaining:J

    cmp-long v0, p2, v2

    if-eqz v0, :cond_5

    int-to-long v0, p1

    sub-long/2addr p2, v0

    .line 154
    iput-wide p2, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->bytesRemaining:J

    .line 156
    :cond_5
    iget-object p2, p0, Lcom/oculus/video/upstream/OculusPackageDataSource;->listener:Lcom/oculus/android/exoplayer2/upstream/TransferListener;

    if-eqz p2, :cond_6

    .line 157
    invoke-interface {p2, p0, p1}, Lcom/oculus/android/exoplayer2/upstream/TransferListener;->onBytesTransferred(Ljava/lang/Object;I)V

    :cond_6
    return p1

    :catch_0
    move-exception p1

    .line 143
    new-instance p2, Lcom/oculus/video/upstream/OculusPackageDataSource$PackageDataSourceException;

    invoke-direct {p2, p1}, Lcom/oculus/video/upstream/OculusPackageDataSource$PackageDataSourceException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method
