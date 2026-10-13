.class Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment$2;
.super Ljava/lang/Object;
.source "ProfilePictureBottomSheetDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment$2;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment$2;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;->access$000(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;)Lcom/oculus/horizon/legacy/social/ProfilePictureUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment$2;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;

    invoke-virtual {v1}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/legacy/social/ProfilePictureUtils;->openChooseFromPhone(Landroid/app/Activity;Z)V

    .line 79
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment$2;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;->dismiss()V

    .line 80
    return-void
.end method
