.class Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ProfilePictureFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->animateProfilePictureOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)V
    .locals 0

    .prologue
    .line 561
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$13;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$13;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->access$800(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$13;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->access$800(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 567
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$13;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->access$800(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$13;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->access$800(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 574
    :cond_0
    return-void
.end method
