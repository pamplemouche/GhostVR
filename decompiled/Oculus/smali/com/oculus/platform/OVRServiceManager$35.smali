.class Lcom/oculus/platform/OVRServiceManager$35;
.super Ljava/lang/Object;
.source "OVRServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/platform/OVRServiceManager;->postNewClientReleaseRunnable(Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/platform/OVRServiceManager;

.field final synthetic val$callback:Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;


# direct methods
.method constructor <init>(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;)V
    .locals 0

    .prologue
    .line 1912
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceManager$35;->this$0:Lcom/oculus/platform/OVRServiceManager;

    iput-object p2, p0, Lcom/oculus/platform/OVRServiceManager$35;->val$callback:Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager$35;->val$callback:Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;

    invoke-virtual {v0}, Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;->onClientRelease()V

    .line 1916
    return-void
.end method
