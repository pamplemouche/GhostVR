.class Lcom/oculus/vrruntimeservice/VrRuntimeService$ScreenStateReceiver$1;
.super Ljava/lang/Object;
.source "VrRuntimeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrruntimeservice/VrRuntimeService$ScreenStateReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/vrruntimeservice/VrRuntimeService$ScreenStateReceiver;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/oculus/vrruntimeservice/VrRuntimeService$ScreenStateReceiver;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$ScreenStateReceiver$1;->this$1:Lcom/oculus/vrruntimeservice/VrRuntimeService$ScreenStateReceiver;

    iput-object p2, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$ScreenStateReceiver$1;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$ScreenStateReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 423
    iget-object v1, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$ScreenStateReceiver$1;->val$action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 425
    invoke-static {v0}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$1000(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 427
    iget-object v1, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$ScreenStateReceiver$1;->val$action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 429
    invoke-static {v0}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$1000(Z)V

    goto :goto_0

    .line 431
    :cond_1
    invoke-static {}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$1100()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$ScreenStateReceiver$1;->val$action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    iget-object v0, p0, Lcom/oculus/vrruntimeservice/VrRuntimeService$ScreenStateReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "VrRuntimeService"

    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mounted state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    .line 437
    invoke-static {v0}, Lcom/oculus/vrruntimeservice/VrRuntimeService;->access$1000(Z)V

    goto :goto_0

    :cond_2
    const-string v0, "VrRuntimeService"

    const-string v1, "Invalid intent action"

    .line 442
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method
