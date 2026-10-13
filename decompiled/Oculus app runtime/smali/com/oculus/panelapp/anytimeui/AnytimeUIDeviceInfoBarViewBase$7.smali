.class Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$7;
.super Landroid/telephony/PhoneStateListener;
.source "AnytimeUIDeviceInfoBarViewBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->startCellularListener()V
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

    .line 509
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$7;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 5

    .line 512
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 517
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getLevel"

    .line 521
    new-array v4, v1, [Ljava/lang/Class;

    .line 522
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 523
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 524
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 526
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :goto_0
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$7;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;

    iput-boolean v0, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->mCellularSignalEverReceived:Z

    .line 534
    invoke-virtual {p1, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->setCellularSignalStrength(I)V

    return-void
.end method
