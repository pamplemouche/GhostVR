.class Lcom/oculus/auth/components/LoginComponents$9;
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

.field final synthetic val$credentialsCapture:Lbolts/Capture;

.field final synthetic val$mode:Lcom/oculus/auth/components/LoginComponents$Mode;


# direct methods
.method constructor <init>(Lcom/oculus/auth/components/LoginComponents;Lcom/oculus/auth/components/LoginComponents$Mode;Lbolts/Capture;Lcom/oculus/auth/components/AuthAction;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/oculus/auth/components/LoginComponents$9;->this$0:Lcom/oculus/auth/components/LoginComponents;

    iput-object p2, p0, Lcom/oculus/auth/components/LoginComponents$9;->val$mode:Lcom/oculus/auth/components/LoginComponents$Mode;

    iput-object p3, p0, Lcom/oculus/auth/components/LoginComponents$9;->val$credentialsCapture:Lbolts/Capture;

    iput-object p4, p0, Lcom/oculus/auth/components/LoginComponents$9;->val$action:Lcom/oculus/auth/components/AuthAction;

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/oculus/auth/components/LoginComponents$9;->val$mode:Lcom/oculus/auth/components/LoginComponents$Mode;

    sget-object v1, Lcom/oculus/auth/components/LoginComponents$Mode;->SECURED_ACTION:Lcom/oculus/auth/components/LoginComponents$Mode;

    if-ne v0, v1, :cond_0

    .line 229
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 235
    :goto_0
    return-object v0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/oculus/auth/components/LoginComponents$9;->val$credentialsCapture:Lbolts/Capture;

    invoke-virtual {v0}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/auth/credentials/Credentials;

    .line 233
    const/4 v1, 0x1

    sget v2, Lcom/oculus/auth/storage/StorageModule$UL_id;->$ul_$xXXcom_oculus_auth_storage_AuthDatastore$xXXBINDING_ID:I

    iget-object v3, p0, Lcom/oculus/auth/components/LoginComponents$9;->this$0:Lcom/oculus/auth/components/LoginComponents;

    invoke-static {v3}, Lcom/oculus/auth/components/LoginComponents;->access$200(Lcom/oculus/auth/components/LoginComponents;)Lcom/facebook/inject/InjectionContext;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/auth/storage/AuthDatastore;

    invoke-interface {v1, v0}, Lcom/oculus/auth/storage/AuthDatastore;->storeCredentials(Lcom/oculus/auth/credentials/Credentials;)V

    .line 235
    iget-object v1, p0, Lcom/oculus/auth/components/LoginComponents$9;->this$0:Lcom/oculus/auth/components/LoginComponents;

    invoke-virtual {v0}, Lcom/oculus/auth/credentials/Credentials;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/oculus/auth/components/LoginComponents$9;->val$mode:Lcom/oculus/auth/components/LoginComponents$Mode;

    iget-object v3, p0, Lcom/oculus/auth/components/LoginComponents$9;->val$action:Lcom/oculus/auth/components/AuthAction;

    invoke-static {v1, v0, v2, v3}, Lcom/oculus/auth/components/LoginComponents;->access$400(Lcom/oculus/auth/components/LoginComponents;Ljava/lang/String;Lcom/oculus/auth/components/LoginComponents$Mode;Lcom/oculus/auth/components/AuthAction;)Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lcom/oculus/auth/components/LoginComponents$9;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
