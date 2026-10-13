.class Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$2;
.super Ljava/lang/Object;
.source "Nux360FBLoginAddEmailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$2;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$2;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->access$300(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$2;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->access$400(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$FBLoginAddEmailFragmentHost;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$FBLoginAddEmailFragmentHost;->introFBLoginConnectNext()V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment$2;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;

    const-string v1, "showing_connect_account"

    invoke-static {v0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;->access$500(Lcom/oculus/horizon/nux360/Nux360FBLoginAddEmailFragment;Ljava/lang/String;)V

    .line 136
    return-void
.end method
