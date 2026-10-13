.class Lcom/oculus/ocms/library/provider/LibraryProvider$4$1;
.super Landroid/os/ResultReceiver;
.source "LibraryProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/ocms/library/provider/LibraryProvider$4;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/ocms/library/provider/LibraryProvider$4;

.field final synthetic val$horizonLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/oculus/ocms/library/provider/LibraryProvider$4;Landroid/os/Handler;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/oculus/ocms/library/provider/LibraryProvider$4$1;->this$1:Lcom/oculus/ocms/library/provider/LibraryProvider$4;

    iput-object p3, p0, Lcom/oculus/ocms/library/provider/LibraryProvider$4$1;->val$horizonLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/oculus/ocms/library/provider/LibraryProvider$4$1;->val$horizonLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 338
    return-void
.end method
