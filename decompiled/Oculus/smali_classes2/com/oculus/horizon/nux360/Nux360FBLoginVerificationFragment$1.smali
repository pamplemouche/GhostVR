.class Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment$1;
.super Ljava/lang/Object;
.source "Nux360FBLoginVerificationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;)Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->changeEmail()V

    .line 70
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment$1;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;->access$100(Lcom/oculus/horizon/nux360/Nux360FBLoginVerificationFragment;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    const-string v1, "change_email_to_verify"

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportFacebookLoginEvent(Ljava/lang/String;)V

    .line 72
    return-void
.end method
