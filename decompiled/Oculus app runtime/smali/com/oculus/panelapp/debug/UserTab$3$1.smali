.class Lcom/oculus/panelapp/debug/UserTab$3$1;
.super Ljava/lang/Object;
.source "UserTab.java"

# interfaces
.implements Lcom/oculus/authapi/AuthResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/debug/UserTab$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oculus/authapi/AuthResultCallback<",
        "Ljava/lang/Void;",
        "Lcom/oculus/authapi/AuthLoginError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/panelapp/debug/UserTab$3;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/debug/UserTab$3;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/oculus/panelapp/debug/UserTab$3$1;->this$1:Lcom/oculus/panelapp/debug/UserTab$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/oculus/authapi/AuthError;)V
    .locals 0

    .line 157
    check-cast p1, Lcom/oculus/authapi/AuthLoginError;

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/UserTab$3$1;->onError(Lcom/oculus/authapi/AuthLoginError;)V

    return-void
.end method

.method public onError(Lcom/oculus/authapi/AuthLoginError;)V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/oculus/panelapp/debug/UserTab$3$1;->this$1:Lcom/oculus/panelapp/debug/UserTab$3;

    iget-object v0, v0, Lcom/oculus/panelapp/debug/UserTab$3;->this$0:Lcom/oculus/panelapp/debug/UserTab;

    new-instance v1, Lcom/oculus/panelapp/debug/UserTab$3$1$2;

    invoke-direct {v1, p0, p1}, Lcom/oculus/panelapp/debug/UserTab$3$1$2;-><init>(Lcom/oculus/panelapp/debug/UserTab$3$1;Lcom/oculus/authapi/AuthLoginError;)V

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/debug/UserTab;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 157
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/UserTab$3$1;->onResult(Ljava/lang/Void;)V

    return-void
.end method

.method public onResult(Ljava/lang/Void;)V
    .locals 1

    .line 160
    iget-object p1, p0, Lcom/oculus/panelapp/debug/UserTab$3$1;->this$1:Lcom/oculus/panelapp/debug/UserTab$3;

    iget-object p1, p1, Lcom/oculus/panelapp/debug/UserTab$3;->this$0:Lcom/oculus/panelapp/debug/UserTab;

    new-instance v0, Lcom/oculus/panelapp/debug/UserTab$3$1$1;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/debug/UserTab$3$1$1;-><init>(Lcom/oculus/panelapp/debug/UserTab$3$1;)V

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/debug/UserTab;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
