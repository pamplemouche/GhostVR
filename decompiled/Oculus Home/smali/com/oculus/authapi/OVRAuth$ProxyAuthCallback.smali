.class Lcom/oculus/authapi/OVRAuth$ProxyAuthCallback;
.super Ljava/lang/Object;
.source "OVRAuth.java"

# interfaces
.implements Lcom/oculus/authapi/AuthResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/authapi/OVRAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyAuthCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oculus/authapi/AuthResultCallback",
        "<",
        "Ljava/lang/Void;",
        "Lcom/oculus/authapi/AuthLoginError;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/oculus/authapi/AuthResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oculus/authapi/AuthResultCallback",
            "<",
            "Ljava/lang/Void;",
            "Lcom/oculus/authapi/AuthLoginError;",
            ">;"
        }
    .end annotation
.end field

.field private final mFbAccessToken:Ljava/lang/String;

.field private final mFbUserId:Ljava/lang/String;

.field final synthetic this$0:Lcom/oculus/authapi/OVRAuth;


# direct methods
.method public constructor <init>(Lcom/oculus/authapi/OVRAuth;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V
    .locals 0
    .param p2, "fbUserId"    # Ljava/lang/String;
    .param p3, "fbAccessToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/oculus/authapi/AuthResultCallback",
            "<",
            "Ljava/lang/Void;",
            "Lcom/oculus/authapi/AuthLoginError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 637
    .local p4, "callback":Lcom/oculus/authapi/AuthResultCallback;, "Lcom/oculus/authapi/AuthResultCallback<Ljava/lang/Void;Lcom/oculus/authapi/AuthLoginError;>;"
    iput-object p1, p0, Lcom/oculus/authapi/OVRAuth$ProxyAuthCallback;->this$0:Lcom/oculus/authapi/OVRAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 638
    iput-object p2, p0, Lcom/oculus/authapi/OVRAuth$ProxyAuthCallback;->mFbUserId:Ljava/lang/String;

    .line 639
    iput-object p3, p0, Lcom/oculus/authapi/OVRAuth$ProxyAuthCallback;->mFbAccessToken:Ljava/lang/String;

    .line 640
    iput-object p4, p0, Lcom/oculus/authapi/OVRAuth$ProxyAuthCallback;->mCallback:Lcom/oculus/authapi/AuthResultCallback;

    .line 641
    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/oculus/authapi/AuthError;)V
    .locals 0

    .prologue
    .line 630
    check-cast p1, Lcom/oculus/authapi/AuthLoginError;

    invoke-virtual {p0, p1}, Lcom/oculus/authapi/OVRAuth$ProxyAuthCallback;->onError(Lcom/oculus/authapi/AuthLoginError;)V

    return-void
.end method

.method public onError(Lcom/oculus/authapi/AuthLoginError;)V
    .locals 1
    .param p1, "error"    # Lcom/oculus/authapi/AuthLoginError;

    .prologue
    .line 651
    iget-object v0, p0, Lcom/oculus/authapi/OVRAuth$ProxyAuthCallback;->mCallback:Lcom/oculus/authapi/AuthResultCallback;

    invoke-interface {v0, p1}, Lcom/oculus/authapi/AuthResultCallback;->onError(Lcom/oculus/authapi/AuthError;)V

    .line 652
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 630
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/authapi/OVRAuth$ProxyAuthCallback;->onResult(Ljava/lang/Void;)V

    return-void
.end method

.method public onResult(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 645
    iget-object v0, p0, Lcom/oculus/authapi/OVRAuth$ProxyAuthCallback;->this$0:Lcom/oculus/authapi/OVRAuth;

    iget-object v1, p0, Lcom/oculus/authapi/OVRAuth$ProxyAuthCallback;->mFbUserId:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/authapi/OVRAuth$ProxyAuthCallback;->mFbAccessToken:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/oculus/authapi/OVRAuth;->access$000(Lcom/oculus/authapi/OVRAuth;Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    iget-object v0, p0, Lcom/oculus/authapi/OVRAuth$ProxyAuthCallback;->mCallback:Lcom/oculus/authapi/AuthResultCallback;

    invoke-interface {v0, p1}, Lcom/oculus/authapi/AuthResultCallback;->onResult(Ljava/lang/Object;)V

    .line 647
    return-void
.end method
