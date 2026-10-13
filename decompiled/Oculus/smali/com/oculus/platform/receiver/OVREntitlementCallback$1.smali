.class Lcom/oculus/platform/receiver/OVREntitlementCallback$1;
.super Ljava/lang/Object;
.source "OVREntitlementCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/platform/receiver/OVREntitlementCallback;->onReceiveResult(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/platform/receiver/OVREntitlementCallback;

.field final synthetic val$response:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/platform/receiver/OVREntitlementCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/oculus/platform/receiver/OVREntitlementCallback$1;->this$0:Lcom/oculus/platform/receiver/OVREntitlementCallback;

    iput-object p2, p0, Lcom/oculus/platform/receiver/OVREntitlementCallback$1;->val$response:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oculus/platform/receiver/OVREntitlementCallback$1;->this$0:Lcom/oculus/platform/receiver/OVREntitlementCallback;

    invoke-static {v0}, Lcom/oculus/platform/receiver/OVREntitlementCallback;->access$000(Lcom/oculus/platform/receiver/OVREntitlementCallback;)Lcom/oculus/platform/callback/OVRStringCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/platform/receiver/OVREntitlementCallback$1;->val$response:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/platform/callback/OVRStringCallback;->onSuccess(Ljava/lang/String;)V

    .line 43
    return-void
.end method
