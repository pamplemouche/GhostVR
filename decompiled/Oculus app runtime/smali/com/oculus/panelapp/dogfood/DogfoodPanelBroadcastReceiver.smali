.class public Lcom/oculus/panelapp/dogfood/DogfoodPanelBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DogfoodPanelBroadcastReceiver.java"


# static fields
.field private static final OTA_ACTION:Ljava/lang/String; = "com.oculus.updater.STATE_NOTIFICATION"

.field private static final OTA_CHECKING_FOR_UDPATES:Ljava/lang/String; = "checking_for_updates"

.field private static final OTA_EXTRA_PROGRESS_ID:Ljava/lang/String; = "progress"

.field private static final OTA_EXTRA_STATE_ID:Ljava/lang/String; = "state"

.field private static final OTA_STATE_NO_UPDATES_AVAILABLE:Ljava/lang/String; = "no_updates_available"

.field private static final STATE_WAITING_FOR_REBOOT:Ljava/lang/String; = "waiting_for_reboot"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final barView:Lcom/oculus/vrshell/panels/views/ShellProgressBarView;

.field private final panelAppView:Lcom/oculus/panelapp/dogfood/DogfoodView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/oculus/panelapp/dogfood/DogfoodPanelBroadcastReceiver;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/dogfood/DogfoodPanelBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/panelapp/dogfood/DogfoodView;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelBroadcastReceiver;->panelAppView:Lcom/oculus/panelapp/dogfood/DogfoodView;

    .line 29
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelBroadcastReceiver;->panelAppView:Lcom/oculus/panelapp/dogfood/DogfoodView;

    sget v0, Lcom/oculus/panelapp/dogfood/R$id;->dogfood_ota_update_progress_bar:I

    .line 30
    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/dogfood/DogfoodView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oculus/vrshell/panels/views/ShellProgressBarView;

    iput-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelBroadcastReceiver;->barView:Lcom/oculus/vrshell/panels/views/ShellProgressBarView;

    return-void
.end method

.method private updateDogfoodPanel(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 4

    .line 54
    sget-object v0, Lcom/oculus/panelapp/dogfood/DogfoodPanelBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Handle Bundle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 56
    sget-object p1, Lcom/oculus/panelapp/dogfood/DogfoodPanelBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string p2, "Ignoring OTA update because there are no extras."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "state"

    .line 59
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no_updates_available"

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    .line 61
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelBroadcastReceiver;->panelAppView:Lcom/oculus/panelapp/dogfood/DogfoodView;

    sget v0, Lcom/oculus/panelapp/dogfood/R$id;->dogfood_update_panel_text:I

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/dogfood/DogfoodView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget v0, Lcom/oculus/panelapp/dogfood/R$string;->dogfood_no_update_ota_text:I

    .line 62
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelBroadcastReceiver;->panelAppView:Lcom/oculus/panelapp/dogfood/DogfoodView;

    sget p2, Lcom/oculus/panelapp/dogfood/R$id;->dogfood_no_update_button:I

    invoke-virtual {p1, p2}, Lcom/oculus/panelapp/dogfood/DogfoodView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelBroadcastReceiver;->barView:Lcom/oculus/vrshell/panels/views/ShellProgressBarView;

    invoke-virtual {p1, v3}, Lcom/oculus/vrshell/panels/views/ShellProgressBarView;->setProgressRatio(F)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "checking_for_updates"

    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const-string v1, "waiting_for_reboot"

    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelBroadcastReceiver;->barView:Lcom/oculus/vrshell/panels/views/ShellProgressBarView;

    invoke-virtual {p1, v3}, Lcom/oculus/vrshell/panels/views/ShellProgressBarView;->setProgressRatio(F)V

    .line 69
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelBroadcastReceiver;->panelAppView:Lcom/oculus/panelapp/dogfood/DogfoodView;

    sget v0, Lcom/oculus/panelapp/dogfood/R$id;->dogfood_update_panel_text:I

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/dogfood/DogfoodView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget v0, Lcom/oculus/panelapp/dogfood/R$string;->dogfood_reboot_request:I

    .line 70
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelBroadcastReceiver;->panelAppView:Lcom/oculus/panelapp/dogfood/DogfoodView;

    sget p2, Lcom/oculus/panelapp/dogfood/R$id;->dogfood_no_update_button:I

    invoke-virtual {p1, p2}, Lcom/oculus/panelapp/dogfood/DogfoodView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 73
    :cond_3
    iget-object v0, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelBroadcastReceiver;->barView:Lcom/oculus/vrshell/panels/views/ShellProgressBarView;

    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/views/ShellProgressBarView;->getProgressRatio()F

    move-result v0

    const-string v1, "progress"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    .line 74
    iget-object v0, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelBroadcastReceiver;->panelAppView:Lcom/oculus/panelapp/dogfood/DogfoodView;

    sget v1, Lcom/oculus/panelapp/dogfood/R$id;->dogfood_update_panel_text:I

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/dogfood/DogfoodView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/oculus/panelapp/dogfood/R$string;->dogfood_update_ota_text:I

    .line 75
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_4

    cmpg-float p2, p1, v3

    if-gtz p2, :cond_4

    .line 77
    sget-object p2, Lcom/oculus/panelapp/dogfood/DogfoodPanelBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting OTA update progress to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object p2, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelBroadcastReceiver;->barView:Lcom/oculus/vrshell/panels/views/ShellProgressBarView;

    invoke-virtual {p2, p1}, Lcom/oculus/vrshell/panels/views/ShellProgressBarView;->setProgressRatio(F)V

    goto :goto_0

    .line 80
    :cond_4
    sget-object p2, Lcom/oculus/panelapp/dogfood/DogfoodPanelBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring OTA update out of bounds progress of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 35
    sget-object v0, Lcom/oculus/panelapp/dogfood/DogfoodPanelBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 38
    sget-object p1, Lcom/oculus/panelapp/dogfood/DogfoodPanelBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string p2, "Received an intent with no action."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 42
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x7e4693d6

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "com.oculus.updater.STATE_NOTIFICATION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 49
    sget-object p1, Lcom/oculus/panelapp/dogfood/DogfoodPanelBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received unknown action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 45
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/oculus/panelapp/dogfood/DogfoodPanelBroadcastReceiver;->updateDogfoodPanel(Landroid/os/Bundle;Landroid/content/Context;)V

    :goto_1
    return-void
.end method
