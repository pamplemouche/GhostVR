.class Lcom/oculus/horizon/library/push/OVRLibraryPushHandler$1;
.super Landroid/os/ResultReceiver;
.source "OVRLibraryPushHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/library/push/OVRLibraryPushHandler;->doInstall(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/library/push/OVRLibraryPushHandler;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/library/push/OVRLibraryPushHandler;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/oculus/horizon/library/push/OVRLibraryPushHandler$1;->this$0:Lcom/oculus/horizon/library/push/OVRLibraryPushHandler;

    iput-object p3, p0, Lcom/oculus/horizon/library/push/OVRLibraryPushHandler$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/oculus/horizon/library/push/OVRLibraryPushHandler$1;->this$0:Lcom/oculus/horizon/library/push/OVRLibraryPushHandler;

    iget-object v1, p0, Lcom/oculus/horizon/library/push/OVRLibraryPushHandler$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/oculus/horizon/library/push/OVRLibraryPushHandler;->onLibraryRefetchedForInstall(ILjava/lang/String;)V

    .line 112
    return-void
.end method
