.class Lcom/oculus/library/provider/AppProvider$1;
.super Landroid/os/ResultReceiver;
.source "AppProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/library/provider/AppProvider;->doInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/library/provider/AppProvider;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/oculus/library/provider/AppProvider;Landroid/os/Handler;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/oculus/library/provider/AppProvider$1;->this$0:Lcom/oculus/library/provider/AppProvider;

    iput-object p3, p0, Lcom/oculus/library/provider/AppProvider$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/oculus/library/provider/AppProvider$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 170
    return-void
.end method
