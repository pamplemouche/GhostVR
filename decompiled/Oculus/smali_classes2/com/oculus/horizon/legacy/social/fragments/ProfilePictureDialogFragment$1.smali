.class Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment$1;
.super Ljava/lang/Object;
.source "ProfilePictureDialogFragment.java"

# interfaces
.implements Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment$1;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)Z
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment$1;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 65
    packed-switch p2, :pswitch_data_0

    .line 76
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 67
    :pswitch_0
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment$1;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;

    invoke-static {v1}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;->access$100(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;)Lcom/oculus/horizon/legacy/social/ProfilePictureUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment$1;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;

    invoke-static {v2}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;->access$000(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/oculus/horizon/legacy/social/ProfilePictureUtils;->openTakePhoto(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 70
    :pswitch_1
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment$1;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;

    invoke-static {v1}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;->access$100(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;)Lcom/oculus/horizon/legacy/social/ProfilePictureUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment$1;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;

    invoke-static {v2}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;->access$000(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/oculus/horizon/legacy/social/ProfilePictureUtils;->openChooseFromPhone(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 73
    :pswitch_2
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment$1;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;

    invoke-static {v1}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;->access$100(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;)Lcom/oculus/horizon/legacy/social/ProfilePictureUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment$1;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;

    invoke-static {v2}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;->access$000(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/oculus/horizon/legacy/social/ProfilePictureUtils;->openChooseOculusPicture(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
