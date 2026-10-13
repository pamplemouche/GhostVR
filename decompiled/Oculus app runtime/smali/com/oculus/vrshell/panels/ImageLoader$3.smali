.class Lcom/oculus/vrshell/panels/ImageLoader$3;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/panels/ImageLoader;->loadImage(Ljava/lang/String;Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/panels/ImageLoader;

.field final synthetic val$callbacks:Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;

.field final synthetic val$fastCachedBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/panels/ImageLoader;Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/oculus/vrshell/panels/ImageLoader$3;->this$0:Lcom/oculus/vrshell/panels/ImageLoader;

    iput-object p2, p0, Lcom/oculus/vrshell/panels/ImageLoader$3;->val$callbacks:Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;

    iput-object p3, p0, Lcom/oculus/vrshell/panels/ImageLoader$3;->val$fastCachedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/ImageLoader$3;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ImageLoader$3;->val$callbacks:Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;

    iget-object v1, p0, Lcom/oculus/vrshell/panels/ImageLoader$3;->val$fastCachedBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;->onSuccess(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    return-object v0
.end method
