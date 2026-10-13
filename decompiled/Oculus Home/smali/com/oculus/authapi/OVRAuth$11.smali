.class Lcom/oculus/authapi/OVRAuth$11;
.super Lcom/oculus/authapi/AuthTaskReceiver;
.source "OVRAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/authapi/OVRAuth;->loginToFb(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/authapi/AuthTaskReceiver",
        "<",
        "Lcom/oculus/authapi/AuthFbLoginResult;",
        "Lcom/oculus/authapi/AuthFbLoginError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/authapi/OVRAuth;


# direct methods
.method constructor <init>(Lcom/oculus/authapi/OVRAuth;Lcom/oculus/authapi/AuthResultCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/authapi/OVRAuth;

    .prologue
    .line 427
    .local p2, "authResultCallback":Lcom/oculus/authapi/AuthResultCallback;, "Lcom/oculus/authapi/AuthResultCallback<Lcom/oculus/authapi/AuthFbLoginResult;Lcom/oculus/authapi/AuthFbLoginError;>;"
    iput-object p1, p0, Lcom/oculus/authapi/OVRAuth$11;->this$0:Lcom/oculus/authapi/OVRAuth;

    invoke-direct {p0, p2}, Lcom/oculus/authapi/AuthTaskReceiver;-><init>(Lcom/oculus/authapi/AuthResultCallback;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createErrorFromBundle(Landroid/os/Bundle;)Lcom/oculus/authapi/AuthError;
    .locals 1

    .prologue
    .line 427
    invoke-virtual {p0, p1}, Lcom/oculus/authapi/OVRAuth$11;->createErrorFromBundle(Landroid/os/Bundle;)Lcom/oculus/authapi/AuthFbLoginError;

    move-result-object v0

    return-object v0
.end method

.method protected createErrorFromBundle(Landroid/os/Bundle;)Lcom/oculus/authapi/AuthFbLoginError;
    .locals 1
    .param p1, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 440
    new-instance v0, Lcom/oculus/authapi/AuthFbLoginError;

    invoke-direct {v0, p1}, Lcom/oculus/authapi/AuthFbLoginError;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method protected createResultFromBundle(Landroid/os/Bundle;)Lcom/oculus/authapi/AuthFbLoginResult;
    .locals 2
    .param p1, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/authapi/AuthFbLoginError;
        }
    .end annotation

    .prologue
    .line 432
    :try_start_0
    new-instance v1, Lcom/oculus/authapi/AuthFbLoginResult;

    invoke-direct {v1, p1}, Lcom/oculus/authapi/AuthFbLoginResult;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/oculus/authapi/AuthError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "error":Lcom/oculus/authapi/AuthError;
    new-instance v1, Lcom/oculus/authapi/AuthFbLoginError;

    invoke-direct {v1, v0}, Lcom/oculus/authapi/AuthFbLoginError;-><init>(Lcom/oculus/authapi/AuthError;)V

    throw v1
.end method

.method protected bridge synthetic createResultFromBundle(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/authapi/AuthError;
        }
    .end annotation

    .prologue
    .line 427
    invoke-virtual {p0, p1}, Lcom/oculus/authapi/OVRAuth$11;->createResultFromBundle(Landroid/os/Bundle;)Lcom/oculus/authapi/AuthFbLoginResult;

    move-result-object v0

    return-object v0
.end method
