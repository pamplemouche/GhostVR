.class Lcom/oculus/authapi/OVRAuth$9;
.super Lcom/oculus/authapi/AuthTaskReceiver;
.source "OVRAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/authapi/OVRAuth;->verifyLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/oculus/authapi/AuthResultCallback;)V
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
    .line 383
    .local p2, "authResultCallback":Lcom/oculus/authapi/AuthResultCallback;, "Lcom/oculus/authapi/AuthResultCallback<Ljava/lang/Void;Lcom/oculus/authapi/AuthError;>;"
    iput-object p1, p0, Lcom/oculus/authapi/OVRAuth$9;->this$0:Lcom/oculus/authapi/OVRAuth;

    invoke-direct {p0, p2}, Lcom/oculus/authapi/AuthTaskReceiver;-><init>(Lcom/oculus/authapi/AuthResultCallback;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createResultFromBundle(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/authapi/AuthError;
        }
    .end annotation

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Lcom/oculus/authapi/OVRAuth$9;->createResultFromBundle(Landroid/os/Bundle;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected createResultFromBundle(Landroid/os/Bundle;)Ljava/lang/Void;
    .locals 1
    .param p1, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 387
    const/4 v0, 0x0

    return-object v0
.end method
