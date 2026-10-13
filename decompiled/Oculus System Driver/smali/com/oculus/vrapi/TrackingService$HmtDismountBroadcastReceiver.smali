.class public Lcom/oculus/vrapi/TrackingService$HmtDismountBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TrackingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrapi/TrackingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HmtDismountBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrapi/TrackingService;


# direct methods
.method public constructor <init>(Lcom/oculus/vrapi/TrackingService;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/oculus/vrapi/TrackingService$HmtDismountBroadcastReceiver;->this$0:Lcom/oculus/vrapi/TrackingService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "TrackingService"

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received broadcast: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object p1, p0, Lcom/oculus/vrapi/TrackingService$HmtDismountBroadcastReceiver;->this$0:Lcom/oculus/vrapi/TrackingService;

    invoke-static {p1}, Lcom/oculus/vrapi/TrackingService;->access$100(Lcom/oculus/vrapi/TrackingService;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "TrackingService"

    const-string p2, "Shutting down due to hmd undock"

    .line 310
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_0

    .line 316
    iget-object p1, p0, Lcom/oculus/vrapi/TrackingService$HmtDismountBroadcastReceiver;->this$0:Lcom/oculus/vrapi/TrackingService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/oculus/vrapi/TrackingService;->stopForeground(Z)V

    .line 318
    :cond_0
    iget-object p1, p0, Lcom/oculus/vrapi/TrackingService$HmtDismountBroadcastReceiver;->this$0:Lcom/oculus/vrapi/TrackingService;

    invoke-virtual {p1}, Lcom/oculus/vrapi/TrackingService;->stopSelf()V

    goto :goto_0

    :cond_1
    const-string p1, "TrackingService"

    const-string p2, "Not shutting down tracking service because developer mode is enabled"

    .line 322
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
