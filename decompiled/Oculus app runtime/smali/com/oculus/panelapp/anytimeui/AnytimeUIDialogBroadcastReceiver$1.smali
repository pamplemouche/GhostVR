.class final Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogBroadcastReceiver$1;
.super Landroid/os/ResultReceiver;
.source "AnytimeUIDialogBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogBroadcastReceiver;->requestOTAStatusUpdate(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-static {p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogBroadcastReceiver;->access$000(Landroid/os/Bundle;)V

    return-void
.end method
