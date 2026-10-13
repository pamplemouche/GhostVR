.class Lcom/oculus/vrshell/home/module/RemoteLivestreamingErrorModule;
.super Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;
.source "RemoteLivestreamingErrorModule.java"


# static fields
.field private static final LIVESTREAM_FATAL_ERROR:Ljava/lang/String; = "livestream_fatal_error"

.field private static final MODULE_NAME:Ljava/lang/String;

.field private static final OCULUS_NOTIFICATION_TYPE:Ljava/lang/String; = "oculus_notification_type"

.field private static final SOCIAL_NOTIFICATION_ACTION:Ljava/lang/String; = "com.oculus.SEE_SOCIAL_NOTIFICATIONS"


# instance fields
.field public RVRCtxTag:J

.field private batteryLevel:I

.field private batteryStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/oculus/vrshell/home/module/RemoteLivestreamingErrorModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/module/RemoteLivestreamingErrorModule;->MODULE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1}, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;-><init>(Landroid/content/Context;)V

    .line 26
    iput v0, p0, Lcom/oculus/vrshell/home/module/RemoteLivestreamingErrorModule;->batteryLevel:I

    .line 27
    iput v0, p0, Lcom/oculus/vrshell/home/module/RemoteLivestreamingErrorModule;->batteryStatus:I

    .line 38
    return-void
.end method

.method static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method static native nativeInvokeCallback(JILjava/lang/String;)V
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.oculus.SEE_SOCIAL_NOTIFICATIONS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/oculus/vrshell/home/module/RemoteLivestreamingErrorModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public processIntent(Landroid/content/Intent;Z)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "forceNativeUpdate"    # Z

    .prologue
    .line 52
    sget-object v1, Lcom/oculus/vrshell/home/module/RemoteLivestreamingErrorModule;->MODULE_NAME:Ljava/lang/String;

    const-string v2, "processIntent()"

    invoke-static {v1, v2}, Llibraries/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v1, "oculus_notification_type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "notifType":Ljava/lang/String;
    const-string v1, "livestream_fatal_error"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    sget-object v1, Lcom/oculus/vrshell/home/module/RemoteLivestreamingErrorModule;->MODULE_NAME:Ljava/lang/String;

    const-string v2, "Calling nativeEmitEventWithJsonData()"

    invoke-static {v1, v2}, Llibraries/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-wide v2, p0, Lcom/oculus/vrshell/home/module/RemoteLivestreamingErrorModule;->RVRCtxTag:J

    const-string v1, "onLivestreamingError"

    invoke-static {v2, v3, v1}, Lcom/oculus/vrshell/home/module/RemoteLivestreamingErrorModule;->nativeEmitEvent(JLjava/lang/String;)V

    goto :goto_0
.end method
