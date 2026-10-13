.class Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable$1;
.super Landroid/content/BroadcastReceiver;
.source "SurfaceBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable$1;->this$1:Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 70
    invoke-static {}, Lcom/oculus/horizon/capture/SurfaceBroadcast;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Completed broadcast package = %s, Surface = %s, lift inhibit = %b."

    iget-object v2, p0, Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable$1;->this$1:Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;

    .line 72
    invoke-static {v2}, Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;->access$100(Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable$1;->this$1:Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;

    .line 73
    invoke-static {v3}, Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;->access$200(Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;)Landroid/view/Surface;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable$1;->this$1:Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;

    .line 74
    invoke-static {v4}, Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;->access$300(Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 69
    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable$1;->this$1:Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;

    invoke-static {v0}, Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;->access$400(Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 76
    return-void
.end method
