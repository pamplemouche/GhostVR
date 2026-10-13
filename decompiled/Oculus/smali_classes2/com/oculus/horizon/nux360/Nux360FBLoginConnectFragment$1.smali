.class Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment$1;
.super Ljava/lang/Object;
.source "Nux360FBLoginConnectFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;

    invoke-static {v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->access$100(Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    iget-object v2, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;

    invoke-static {v2}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->access$200(Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;)Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;->link(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method
