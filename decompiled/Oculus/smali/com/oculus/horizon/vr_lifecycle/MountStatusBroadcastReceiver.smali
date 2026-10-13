.class Lcom/oculus/horizon/vr_lifecycle/MountStatusBroadcastReceiver;
.super Lcom/oculus/horizon/vr_lifecycle/MountStatusBase;
.source "MountStatusBroadcastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mBroadcastReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mContext:Landroid/content/Context;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/oculus/horizon/vr_lifecycle/MountStatusBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/vr_lifecycle/MountStatusBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Lcom/oculus/horizon/vr_lifecycle/MountStatusBase;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/oculus/horizon/vr_lifecycle/MountStatusBroadcastReceiver;->mBroadcastReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    .line 16
    iput-object v0, p0, Lcom/oculus/horizon/vr_lifecycle/MountStatusBroadcastReceiver;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/oculus/horizon/vr_lifecycle/MountStatusBroadcastReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public start(Landroid/content/Context;Lcom/oculus/horizon/vr_lifecycle/MountStatusBase$Callback;)V
    .locals 4

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oculus/horizon/vr_lifecycle/MountStatusBroadcastReceiver;->mBroadcastReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Lcom/oculus/horizon/vr_lifecycle/MountStatusBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Attempting to call start when broadcast receiver is already registered."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :goto_0
    return-void

    .line 27
    :cond_0
    if-nez p1, :cond_1

    .line 28
    sget-object v0, Lcom/oculus/horizon/vr_lifecycle/MountStatusBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Null context, bailing"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :cond_1
    if-nez p2, :cond_2

    .line 32
    sget-object v0, Lcom/oculus/horizon/vr_lifecycle/MountStatusBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Null callback.  Aborting start, this would have no effect"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_2
    iput-object p1, p0, Lcom/oculus/horizon/vr_lifecycle/MountStatusBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 37
    sget-object v0, Lcom/oculus/horizon/vr_lifecycle/MountStatusBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Starting up mount status broadcast receiver"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/oculus/horizon/vr_lifecycle/MountStatusBroadcastReceiver$1;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.oculus.intent.action.MOUNT_STATE_CHANGED"

    aput-object v3, v1, v2

    invoke-direct {v0, p0, v1, p2}, Lcom/oculus/horizon/vr_lifecycle/MountStatusBroadcastReceiver$1;-><init>(Lcom/oculus/horizon/vr_lifecycle/MountStatusBroadcastReceiver;[Ljava/lang/String;Lcom/oculus/horizon/vr_lifecycle/MountStatusBase$Callback;)V

    iput-object v0, p0, Lcom/oculus/horizon/vr_lifecycle/MountStatusBroadcastReceiver;->mBroadcastReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    .line 52
    iget-object v0, p0, Lcom/oculus/horizon/vr_lifecycle/MountStatusBroadcastReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oculus/horizon/vr_lifecycle/MountStatusBroadcastReceiver;->mBroadcastReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    iget-object v2, p0, Lcom/oculus/horizon/vr_lifecycle/MountStatusBroadcastReceiver;->mBroadcastReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    invoke-virtual {v2}, Lcom/facebook/secure/receiver/SecureBroadcastReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public teardown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    iget-object v0, p0, Lcom/oculus/horizon/vr_lifecycle/MountStatusBroadcastReceiver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/oculus/horizon/vr_lifecycle/MountStatusBroadcastReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oculus/horizon/vr_lifecycle/MountStatusBroadcastReceiver;->mBroadcastReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 60
    :cond_0
    iput-object v2, p0, Lcom/oculus/horizon/vr_lifecycle/MountStatusBroadcastReceiver;->mBroadcastReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    .line 61
    iput-object v2, p0, Lcom/oculus/horizon/vr_lifecycle/MountStatusBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method
