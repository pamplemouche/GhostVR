.class Lcom/oculus/vrshell/panels/ImageLoader$7$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/panels/ImageLoader$7;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/vrshell/panels/ImageLoader$7;

.field final synthetic val$finalT:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/panels/ImageLoader$7;Ljava/lang/Throwable;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/oculus/vrshell/panels/ImageLoader$7$1;->this$1:Lcom/oculus/vrshell/panels/ImageLoader$7;

    iput-object p2, p0, Lcom/oculus/vrshell/panels/ImageLoader$7$1;->val$finalT:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ImageLoader$7$1;->this$1:Lcom/oculus/vrshell/panels/ImageLoader$7;

    iget-object v0, v0, Lcom/oculus/vrshell/panels/ImageLoader$7;->val$callbacks:Lcom/oculus/vrshell/panels/ImageLoader$MultiImageCallbacks;

    iget-object v1, p0, Lcom/oculus/vrshell/panels/ImageLoader$7$1;->this$1:Lcom/oculus/vrshell/panels/ImageLoader$7;

    iget-object v1, v1, Lcom/oculus/vrshell/panels/ImageLoader$7;->val$loadedImages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/vrshell/panels/ImageLoader$7$1;->val$finalT:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2}, Lcom/oculus/vrshell/panels/ImageLoader$MultiImageCallbacks;->onComplete(Ljava/util/Map;Ljava/lang/Throwable;)V

    return-void
.end method
