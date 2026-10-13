.class Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter$1;
.super Ljava/lang/Object;
.source "TwoFacMethodSelectAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;->onBindViewHolder(Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter$TwoFacMethodSelectViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;

.field final synthetic val$twoFactorMethod:Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter$1;->this$0:Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;

    iput-object p2, p0, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter$1;->val$twoFactorMethod:Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 72
    instance-of v0, p1, Lcom/oculus/vrshell/panels/views/ShellButton;

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method id clicked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lcom/oculus/vrshell/panels/views/ShellButton;

    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/views/ShellButton;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object p1, p0, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter$1;->this$0:Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;

    invoke-static {p1}, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;->access$200(Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;)Lcom/oculus/panelapp/debug/UserTab$TwoFacMethodSelectCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter$1;->this$0:Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;

    invoke-static {p1}, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;->access$200(Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;)Lcom/oculus/panelapp/debug/UserTab$TwoFacMethodSelectCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter$1;->this$0:Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;

    invoke-static {v0}, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;->access$300(Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter$1;->val$twoFactorMethod:Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;

    iget-object v1, v1, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->id:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/oculus/panelapp/debug/UserTab$TwoFacMethodSelectCallback;->sendTwoFacCode(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
