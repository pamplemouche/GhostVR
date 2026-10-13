.class Lcom/oculus/video/OculusExoPlayer$8;
.super Ljava/lang/Object;
.source "OculusExoPlayer.java"

# interfaces
.implements Lcom/oculus/video/extractor/OculusExtractorsFactory$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/OculusExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/OculusExoPlayer;


# direct methods
.method constructor <init>(Lcom/oculus/video/OculusExoPlayer;)V
    .locals 0

    .line 1155
    iput-object p1, p0, Lcom/oculus/video/OculusExoPlayer$8;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFindVideoSeekTimestamp(J)V
    .locals 2

    .line 1177
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$8;->this$0:Lcom/oculus/video/OculusExoPlayer;

    monitor-enter v0

    .line 1178
    :try_start_0
    iget-object v1, p0, Lcom/oculus/video/OculusExoPlayer$8;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v1}, Lcom/oculus/video/OculusExoPlayer;->access$2800(Lcom/oculus/video/OculusExoPlayer;)Ljava/util/SortedSet;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 1179
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onMovieMetadataXml(Ljava/lang/String;)V
    .locals 3

    .line 1160
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$8;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v0}, Lcom/oculus/video/OculusExoPlayer;->access$1900(Lcom/oculus/video/OculusExoPlayer;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1163
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$8;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v0}, Lcom/oculus/video/OculusExoPlayer;->access$1900(Lcom/oculus/video/OculusExoPlayer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/android/exoplayer2/Renderer;

    .line 1164
    instance-of v2, v1, Lcom/oculus/video/extractor/OculusExtractorsFactory$EventListener;

    if-eqz v2, :cond_1

    .line 1165
    check-cast v1, Lcom/oculus/video/extractor/OculusExtractorsFactory$EventListener;

    invoke-interface {v1, p1}, Lcom/oculus/video/extractor/OculusExtractorsFactory$EventListener;->onMovieMetadataXml(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onSphericalV1Xml(Ljava/lang/String;)V
    .locals 1

    .line 1172
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$8;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {p1}, Lcom/oculus/video/projection/VideoProjection;->fromSphericalV1Xml(Ljava/lang/String;)Lcom/oculus/video/projection/VideoProjection;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oculus/video/OculusExoPlayer;->access$1100(Lcom/oculus/video/OculusExoPlayer;Lcom/oculus/video/projection/VideoProjection;)V

    return-void
.end method
