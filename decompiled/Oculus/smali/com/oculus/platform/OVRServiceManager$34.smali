.class Lcom/oculus/platform/OVRServiceManager$34;
.super Ljava/lang/Object;
.source "OVRServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/platform/OVRServiceManager;->postNewClientErrorRunnable(Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Lcom/oculus/platform/util/OVRError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/platform/OVRServiceManager;

.field final synthetic val$callback:Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;

.field final synthetic val$errorCode:Lcom/oculus/platform/util/OVRError;


# direct methods
.method constructor <init>(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Lcom/oculus/platform/util/OVRError;)V
    .locals 0

    .prologue
    .line 1903
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceManager$34;->this$0:Lcom/oculus/platform/OVRServiceManager;

    iput-object p2, p0, Lcom/oculus/platform/OVRServiceManager$34;->val$callback:Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;

    iput-object p3, p0, Lcom/oculus/platform/OVRServiceManager$34;->val$errorCode:Lcom/oculus/platform/util/OVRError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1906
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager$34;->val$callback:Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;

    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager$34;->val$errorCode:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    iget-object v2, p0, Lcom/oculus/platform/OVRServiceManager$34;->val$errorCode:Lcom/oculus/platform/util/OVRError;

    iget-object v2, v2, Lcom/oculus/platform/util/OVRError;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;->onClientError(ILjava/lang/String;)V

    .line 1907
    return-void
.end method
