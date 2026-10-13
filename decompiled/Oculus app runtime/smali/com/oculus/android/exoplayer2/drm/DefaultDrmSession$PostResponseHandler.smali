.class Lcom/oculus/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;
.super Landroid/os/Handler;
.source "DefaultDrmSession.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/android/exoplayer2/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostResponseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/android/exoplayer2/drm/DefaultDrmSession;


# direct methods
.method public constructor <init>(Lcom/oculus/android/exoplayer2/drm/DefaultDrmSession;Landroid/os/Looper;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/oculus/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;->this$0:Lcom/oculus/android/exoplayer2/drm/DefaultDrmSession;

    .line 487
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 492
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;->this$0:Lcom/oculus/android/exoplayer2/drm/DefaultDrmSession;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/oculus/android/exoplayer2/drm/DefaultDrmSession;->access$200(Lcom/oculus/android/exoplayer2/drm/DefaultDrmSession;Ljava/lang/Object;)V

    goto :goto_0

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;->this$0:Lcom/oculus/android/exoplayer2/drm/DefaultDrmSession;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/oculus/android/exoplayer2/drm/DefaultDrmSession;->access$100(Lcom/oculus/android/exoplayer2/drm/DefaultDrmSession;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
