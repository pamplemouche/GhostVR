.class Lcom/oculus/authapi/OVRAuth$12;
.super Lcom/oculus/authapi/AuthTaskReceiver;
.source "OVRAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/authapi/OVRAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/authapi/AuthTaskReceiver",
        "<",
        "Ljava/lang/Void;",
        "Lcom/oculus/authapi/AuthFbLoginError;",
        ">;"
    }
.end annotation


# virtual methods
.method protected bridge synthetic createErrorFromBundle(Landroid/os/Bundle;)Lcom/oculus/authapi/AuthError;
    .locals 1

    .prologue
    .line 450
    invoke-virtual {p0, p1}, Lcom/oculus/authapi/OVRAuth$12;->createErrorFromBundle(Landroid/os/Bundle;)Lcom/oculus/authapi/AuthFbLoginError;

    move-result-object v0

    return-object v0
.end method

.method protected createErrorFromBundle(Landroid/os/Bundle;)Lcom/oculus/authapi/AuthFbLoginError;
    .locals 1

    .prologue
    .line 459
    new-instance v0, Lcom/oculus/authapi/AuthFbLoginError;

    invoke-direct {v0, p1}, Lcom/oculus/authapi/AuthFbLoginError;-><init>(Landroid/os/Bundle;)V

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
    .line 450
    invoke-virtual {p0, p1}, Lcom/oculus/authapi/OVRAuth$12;->createResultFromBundle(Landroid/os/Bundle;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected createResultFromBundle(Landroid/os/Bundle;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x0

    return-object v0
.end method
