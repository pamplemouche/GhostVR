.class Lcom/oculus/video/OculusExoPlayer$1;
.super Ljava/lang/Object;
.source "OculusExoPlayer.java"

# interfaces
.implements Lcom/oculus/video/upstream/OculusCacheDataSource$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/video/OculusExoPlayer;-><init>(Landroid/content/Context;Lcom/oculus/video/audio/AudioSpatializerController;Landroid/os/Handler;)V
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

    .line 278
    iput-object p1, p0, Lcom/oculus/video/OculusExoPlayer$1;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCache()Lcom/oculus/android/exoplayer2/upstream/cache/Cache;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$1;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v0}, Lcom/oculus/video/OculusExoPlayer;->access$100(Lcom/oculus/video/OculusExoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oculus/video/OculusExoPlayer;->access$200()Lcom/oculus/android/exoplayer2/upstream/cache/Cache;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCurrentPositionMs()J
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$1;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-virtual {v0}, Lcom/oculus/video/OculusExoPlayer;->getCurrentPositionMs()J

    move-result-wide v0

    return-wide v0
.end method
