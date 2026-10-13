.class Lcom/oculus/authapi/OVRAuth$10;
.super Lcom/oculus/authapi/AuthTaskReceiver;
.source "OVRAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/authapi/OVRAuth;->fetchTwoFactorMethods(Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/authapi/AuthTaskReceiver",
        "<",
        "Lcom/oculus/authapi/AuthFetchTwoFactorMethodsResult;",
        "Lcom/oculus/authapi/AuthError;",
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
    .line 409
    .local p2, "authResultCallback":Lcom/oculus/authapi/AuthResultCallback;, "Lcom/oculus/authapi/AuthResultCallback<Lcom/oculus/authapi/AuthFetchTwoFactorMethodsResult;Lcom/oculus/authapi/AuthError;>;"
    iput-object p1, p0, Lcom/oculus/authapi/OVRAuth$10;->this$0:Lcom/oculus/authapi/OVRAuth;

    invoke-direct {p0, p2}, Lcom/oculus/authapi/AuthTaskReceiver;-><init>(Lcom/oculus/authapi/AuthResultCallback;)V

    return-void
.end method


# virtual methods
.method protected createResultFromBundle(Landroid/os/Bundle;)Lcom/oculus/authapi/AuthFetchTwoFactorMethodsResult;
    .locals 1
    .param p1, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 412
    new-instance v0, Lcom/oculus/authapi/AuthFetchTwoFactorMethodsResult;

    invoke-direct {v0, p1}, Lcom/oculus/authapi/AuthFetchTwoFactorMethodsResult;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method protected bridge synthetic createResultFromBundle(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/authapi/AuthError;
        }
    .end annotation

    .prologue
    .line 409
    invoke-virtual {p0, p1}, Lcom/oculus/authapi/OVRAuth$10;->createResultFromBundle(Landroid/os/Bundle;)Lcom/oculus/authapi/AuthFetchTwoFactorMethodsResult;

    move-result-object v0

    return-object v0
.end method
