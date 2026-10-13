.class Lcom/oculus/authapi/OVRAuth$6;
.super Lcom/oculus/authapi/AuthTaskReceiver;
.source "OVRAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/authapi/OVRAuth;->resendLoginApprovalsCode(Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/authapi/AuthTaskReceiver<",
        "Ljava/lang/Void;",
        "Lcom/oculus/authapi/AuthError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/authapi/OVRAuth;


# direct methods
.method constructor <init>(Lcom/oculus/authapi/OVRAuth;Lcom/oculus/authapi/AuthResultCallback;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/oculus/authapi/OVRAuth$6;->this$0:Lcom/oculus/authapi/OVRAuth;

    invoke-direct {p0, p2}, Lcom/oculus/authapi/AuthTaskReceiver;-><init>(Lcom/oculus/authapi/AuthResultCallback;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createResultFromBundle(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0

    .line 295
    invoke-virtual {p0, p1}, Lcom/oculus/authapi/OVRAuth$6;->createResultFromBundle(Landroid/os/Bundle;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected createResultFromBundle(Landroid/os/Bundle;)Ljava/lang/Void;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
