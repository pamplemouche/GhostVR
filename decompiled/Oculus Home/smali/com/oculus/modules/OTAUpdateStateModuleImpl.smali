.class public Lcom/oculus/modules/OTAUpdateStateModuleImpl;
.super Lcom/oculus/modules/codegen/OTAUpdateStateModule;
.source "OTAUpdateStateModuleImpl.java"


# static fields
.field private static final OTA_ACTION:Ljava/lang/String; = "com.oculus.updater.STATE_NOTIFICATION"

.field private static final OTA_CHECKING_FOR_UPDATES:Ljava/lang/String; = "checking_for_updates"

.field private static final OTA_EXTRA_PROGRESS_ID:Ljava/lang/String; = "progress"

.field private static final OTA_EXTRA_STATE_ID:Ljava/lang/String; = "state"

.field private static final OTA_STATE_NO_UPDATES_AVAILABLE:Ljava/lang/String; = "no_updates_available"

.field private static final STATE_WAITING_FOR_REBOOT:Ljava/lang/String; = "waiting_for_reboot"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mProgress:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/oculus/modules/codegen/OTAUpdateStateModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/OTAUpdateStateModuleImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/oculus/modules/codegen/OTAUpdateStateModule;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/oculus/modules/OTAUpdateStateModuleImpl;->mProgress:F

    .line 24
    return-void
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 29
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.oculus.updater.STATE_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    return-object v0
.end method

.method public processIntent(Landroid/content/Intent;Z)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "forceNativeUpdate"    # Z

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 35
    sget-object v3, Lcom/oculus/modules/OTAUpdateStateModuleImpl;->TAG:Ljava/lang/String;

    const-string v4, "processIntent()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.oculus.updater.STATE_NOTIFICATION"

    if-eq v3, v4, :cond_0

    .line 67
    :goto_0
    return-void

    .line 40
    :cond_0
    const-string v3, "state"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "state":Ljava/lang/String;
    const-string v3, "checking_for_updates"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 42
    sget-object v3, Lcom/oculus/modules/OTAUpdateStateModuleImpl;->TAG:Ljava/lang/String;

    const-string v4, "Checking for updates."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 44
    :cond_1
    const-string v3, "no_updates_available"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 45
    iput v5, p0, Lcom/oculus/modules/OTAUpdateStateModuleImpl;->mProgress:F

    .line 46
    sget-object v3, Lcom/oculus/modules/OTAUpdateStateModuleImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No OTA update available. Setting progress to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/oculus/modules/OTAUpdateStateModuleImpl;->mProgress:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_1
    new-instance v2, Lcom/oculus/modules/codegen/OTAUpdateStateModule$OTAProgressUpdate;

    invoke-direct {v2}, Lcom/oculus/modules/codegen/OTAUpdateStateModule$OTAProgressUpdate;-><init>()V

    .line 65
    .local v2, "update":Lcom/oculus/modules/codegen/OTAUpdateStateModule$OTAProgressUpdate;
    iget v3, p0, Lcom/oculus/modules/OTAUpdateStateModuleImpl;->mProgress:F

    float-to-double v4, v3

    iput-wide v4, v2, Lcom/oculus/modules/codegen/OTAUpdateStateModule$OTAProgressUpdate;->progress:D

    .line 66
    invoke-virtual {p0, v2}, Lcom/oculus/modules/OTAUpdateStateModuleImpl;->emitOnOTAProgressUpdated(Lcom/oculus/modules/codegen/OTAUpdateStateModule$OTAProgressUpdate;)V

    goto :goto_0

    .line 47
    .end local v2    # "update":Lcom/oculus/modules/codegen/OTAUpdateStateModule$OTAProgressUpdate;
    :cond_2
    const-string v3, "waiting_for_reboot"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 48
    iput v5, p0, Lcom/oculus/modules/OTAUpdateStateModuleImpl;->mProgress:F

    .line 49
    sget-object v3, Lcom/oculus/modules/OTAUpdateStateModuleImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Waiting for reboot. Setting progress to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/oculus/modules/OTAUpdateStateModuleImpl;->mProgress:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 51
    :cond_3
    const-string v3, "progress"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    .line 52
    .local v0, "progress":F
    iget v3, p0, Lcom/oculus/modules/OTAUpdateStateModuleImpl;->mProgress:F

    cmpl-float v3, v0, v3

    if-nez v3, :cond_4

    .line 53
    sget-object v3, Lcom/oculus/modules/OTAUpdateStateModuleImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring OTA update with no change in progress of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 55
    :cond_4
    cmpl-float v3, v0, v6

    if-ltz v3, :cond_5

    cmpg-float v3, v0, v5

    if-gtz v3, :cond_5

    .line 56
    sget-object v3, Lcom/oculus/modules/OTAUpdateStateModuleImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting OTA update progress to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iput v0, p0, Lcom/oculus/modules/OTAUpdateStateModuleImpl;->mProgress:F

    goto :goto_1

    .line 59
    :cond_5
    sget-object v3, Lcom/oculus/modules/OTAUpdateStateModuleImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring OTA update out of bounds progress of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
