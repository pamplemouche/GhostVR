.class Lcom/oculus/authapi/OVRAuth$1;
.super Lcom/oculus/authapi/AuthTaskReceiver;
.source "OVRAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/authapi/OVRAuth;->loginWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/authapi/AuthTaskReceiver<",
        "Ljava/lang/Void;",
        "Lcom/oculus/authapi/AuthLoginError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/authapi/OVRAuth;


# direct methods
.method constructor <init>(Lcom/oculus/authapi/OVRAuth;Lcom/oculus/authapi/AuthResultCallback;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/oculus/authapi/OVRAuth$1;->this$0:Lcom/oculus/authapi/OVRAuth;

    invoke-direct {p0, p2}, Lcom/oculus/authapi/AuthTaskReceiver;-><init>(Lcom/oculus/authapi/AuthResultCallback;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createErrorFromBundle(Landroid/os/Bundle;)Lcom/oculus/authapi/AuthError;
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lcom/oculus/authapi/OVRAuth$1;->createErrorFromBundle(Landroid/os/Bundle;)Lcom/oculus/authapi/AuthLoginError;

    move-result-object p1

    return-object p1
.end method

.method protected createErrorFromBundle(Landroid/os/Bundle;)Lcom/oculus/authapi/AuthLoginError;
    .locals 1

    .line 100
    new-instance v0, Lcom/oculus/authapi/AuthLoginError;

    invoke-direct {v0, p1}, Lcom/oculus/authapi/AuthLoginError;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method protected bridge synthetic createResultFromBundle(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lcom/oculus/authapi/OVRAuth$1;->createResultFromBundle(Landroid/os/Bundle;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected createResultFromBundle(Landroid/os/Bundle;)Ljava/lang/Void;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
