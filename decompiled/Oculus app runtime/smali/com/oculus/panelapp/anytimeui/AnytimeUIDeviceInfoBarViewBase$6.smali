.class Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$6;
.super Landroid/content/BroadcastReceiver;
.source "AnytimeUIDeviceInfoBarViewBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->startBluetoothListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$6;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 479
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 481
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x5b36f014

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x42f3be3f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const/high16 v0, -0x80000000

    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_3

    goto :goto_2

    :cond_3
    const-string p1, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    .line 492
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 494
    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$6;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    if-ne p1, v3, :cond_5

    :cond_4
    const/4 v2, 0x1

    :cond_5
    invoke-virtual {p2, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->setBluetoothConnected(Z)V

    goto :goto_2

    :cond_6
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 484
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 486
    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$6;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;

    const/16 v0, 0xc

    if-eq p1, v0, :cond_7

    const/16 v0, 0xb

    if-ne p1, v0, :cond_8

    :cond_7
    const/4 v2, 0x1

    :cond_8
    invoke-virtual {p2, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->setBluetoothEnabled(Z)V

    :goto_2
    return-void
.end method
