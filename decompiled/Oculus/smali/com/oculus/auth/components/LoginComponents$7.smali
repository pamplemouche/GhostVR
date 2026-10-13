.class Lcom/oculus/auth/components/LoginComponents$7;
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

.field final synthetic val$credentialsCapture:Lbolts/Capture;

.field final synthetic val$userInfoCapture:Lbolts/Capture;


# direct methods
.method constructor <init>(Lcom/oculus/auth/components/LoginComponents;Lbolts/Capture;Lbolts/Capture;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/oculus/auth/components/LoginComponents$7;->this$0:Lcom/oculus/auth/components/LoginComponents;

    iput-object p2, p0, Lcom/oculus/auth/components/LoginComponents$7;->val$credentialsCapture:Lbolts/Capture;

    iput-object p3, p0, Lcom/oculus/auth/components/LoginComponents$7;->val$userInfoCapture:Lbolts/Capture;

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
    .line 194
    iget-object v0, p0, Lcom/oculus/auth/components/LoginComponents$7;->val$credentialsCapture:Lbolts/Capture;

    invoke-virtual {v0}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/auth/credentials/Credentials;

    invoke-virtual {v0}, Lcom/oculus/auth/credentials/Credentials;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 195
    const/4 v0, 0x5

    sget v2, Lcom/oculus/auth/components/ComponentsModule$UL_id;->$ul_$xXXcom_oculus_auth_components_UserInfoFetcher$xXXBINDING_ID:I

    iget-object v3, p0, Lcom/oculus/auth/components/LoginComponents$7;->this$0:Lcom/oculus/auth/components/LoginComponents;

    .line 196
    invoke-static {v3}, Lcom/oculus/auth/components/LoginComponents;->access$200(Lcom/oculus/auth/components/LoginComponents;)Lcom/facebook/inject/InjectionContext;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/auth/components/UserInfoFetcher;

    invoke-virtual {v0, v1}, Lcom/oculus/auth/components/UserInfoFetcher;->fetchUserInfoAsync(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/oculus/auth/components/LoginComponents$7;->val$userInfoCapture:Lbolts/Capture;

    invoke-static {v0, v1}, Lcom/oculus/auth/components/LoginComponents;->access$300(Lbolts/Task;Lbolts/Capture;)Lbolts/Task;

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
    .line 191
    invoke-virtual {p0, p1}, Lcom/oculus/auth/components/LoginComponents$7;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
