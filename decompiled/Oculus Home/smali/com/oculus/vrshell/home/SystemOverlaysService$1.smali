.class Lcom/oculus/vrshell/home/SystemOverlaysService$1;
.super Landroid/content/BroadcastReceiver;
.source "SystemOverlaysService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/home/SystemOverlaysService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/home/SystemOverlaysService;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/home/SystemOverlaysService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/vrshell/home/SystemOverlaysService;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/oculus/vrshell/home/SystemOverlaysService$1;->this$0:Lcom/oculus/vrshell/home/SystemOverlaysService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oculus.vrdriver.teardown_notification"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 46
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 47
    return-void
.end method
