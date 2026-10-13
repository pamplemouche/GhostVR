.class Lcom/oculus/auth/components/LoginComponents$5;
.super Ljava/lang/Object;
.source "LoginComponents.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/auth/components/LoginComponents;->completeLoginAsync(Lbolts/Task;Lcom/oculus/auth/components/LoginComponents$Mode;Lcom/oculus/auth/components/AuthAction;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/lang/Void;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/auth/components/LoginComponents;

.field final synthetic val$action:Lcom/oculus/auth/components/AuthAction;

.field final synthetic val$userInfoCapture:Lbolts/Capture;


# direct methods
.method constructor <init>(Lcom/oculus/auth/components/LoginComponents;Lbolts/Capture;Lcom/oculus/auth/components/AuthAction;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/oculus/auth/components/LoginComponents$5;->this$0:Lcom/oculus/auth/components/LoginComponents;

    iput-object p2, p0, Lcom/oculus/auth/components/LoginComponents$5;->val$userInfoCapture:Lbolts/Capture;

    iput-object p3, p0, Lcom/oculus/auth/components/LoginComponents$5;->val$action:Lcom/oculus/auth/components/AuthAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/oculus/auth/components/LoginComponents$5;->val$userInfoCapture:Lbolts/Capture;

    invoke-virtual {v0}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/auth/api/UserInfoResponse;

    iget-object v1, v0, Lcom/oculus/auth/api/UserInfoResponse;->deviceSecret:Ljava/lang/String;

    .line 218
    const/4 v0, 0x6

    sget v2, Lcom/oculus/auth/components/ComponentsModule$UL_id;->$ul_$xXXcom_oculus_auth_components_DeviceClaimHelper$xXXBINDING_ID:I

    iget-object v3, p0, Lcom/oculus/auth/components/LoginComponents$5;->this$0:Lcom/oculus/auth/components/LoginComponents;

    invoke-static {v3}, Lcom/oculus/auth/components/LoginComponents;->access$200(Lcom/oculus/auth/components/LoginComponents;)Lcom/facebook/inject/InjectionContext;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/auth/components/DeviceClaimHelper;

    iget-object v2, p0, Lcom/oculus/auth/components/LoginComponents$5;->val$action:Lcom/oculus/auth/components/AuthAction;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/auth/components/DeviceClaimHelper;->claimDeviceAsync(Ljava/lang/String;Lcom/oculus/auth/components/AuthAction;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p0, p1}, Lcom/oculus/auth/components/LoginComponents$5;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
