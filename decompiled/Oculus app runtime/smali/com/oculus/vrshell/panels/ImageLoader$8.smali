.class Lcom/oculus/vrshell/panels/ImageLoader$8;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/ThreadExecutor$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/panels/ImageLoader;->attachListener(Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oculus/vrshell/panels/ThreadExecutor$Listener<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/panels/ImageLoader;

.field final synthetic val$callbacks:Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/panels/ImageLoader;Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/oculus/vrshell/panels/ImageLoader$8;->this$0:Lcom/oculus/vrshell/panels/ImageLoader;

    iput-object p2, p0, Lcom/oculus/vrshell/panels/ImageLoader$8;->val$callbacks:Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ImageLoader$8;->val$callbacks:Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;

    invoke-interface {v0, p1}, Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p1, :cond_0

    .line 275
    iget-object p1, p0, Lcom/oculus/vrshell/panels/ImageLoader$8;->val$callbacks:Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to load bitmap"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ImageLoader$8;->val$callbacks:Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;

    invoke-interface {v0, p1}, Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;->onSuccess(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 268
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/panels/ImageLoader$8;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void
.end method
