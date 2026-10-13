.class public Lcom/oculus/vrruntimeservice/VrRuntimeService$ScreenStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VrRuntimeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrruntimeservice/VrRuntimeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrruntimeservice/VrRuntimeService;


# direct methods
.method public constructor <init>(Lcom/oculus/vrruntimeservice/VrRuntimeService;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$ScreenStateReceiver;->this$0:Lcom/oculus/vrruntimeservice/VrRuntimeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "VrRuntimeService"

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received broadcast: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 413
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 414
    new-instance v1, Lcom/oculus/vrruntimeservice/VrRuntimeService$ScreenStateReceiver$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/oculus/vrruntimeservice/VrRuntimeService$ScreenStateReceiver$1;-><init>(Lcom/oculus/vrruntimeservice/VrRuntimeService$ScreenStateReceiver;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
