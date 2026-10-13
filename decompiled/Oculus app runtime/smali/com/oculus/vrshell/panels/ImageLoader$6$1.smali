.class Lcom/oculus/vrshell/panels/ImageLoader$6$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/panels/ImageLoader$6;->onSuccess(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/vrshell/panels/ImageLoader$6;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/panels/ImageLoader$6;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/oculus/vrshell/panels/ImageLoader$6$1;->this$1:Lcom/oculus/vrshell/panels/ImageLoader$6;

    iput-object p2, p0, Lcom/oculus/vrshell/panels/ImageLoader$6$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ImageLoader$6$1;->this$1:Lcom/oculus/vrshell/panels/ImageLoader$6;

    iget-object v0, v0, Lcom/oculus/vrshell/panels/ImageLoader$6;->val$callbacks:Lcom/oculus/vrshell/panels/ImageLoader$MultiImageCallbacks;

    iget-object v1, p0, Lcom/oculus/vrshell/panels/ImageLoader$6$1;->this$1:Lcom/oculus/vrshell/panels/ImageLoader$6;

    iget-object v1, v1, Lcom/oculus/vrshell/panels/ImageLoader$6;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/vrshell/panels/ImageLoader$6$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lcom/oculus/vrshell/panels/ImageLoader$MultiImageCallbacks;->onLoadImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 188
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ImageLoader$6$1;->this$1:Lcom/oculus/vrshell/panels/ImageLoader$6;

    iget-object v0, v0, Lcom/oculus/vrshell/panels/ImageLoader$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
