.class Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$1;
.super Ljava/lang/Object;
.source "ProfilePicturePreselectFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$1;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$1;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 148
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 149
    const-string v2, "extra_fragment_arg_back_finishes"

    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$1;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;

    invoke-static {v3}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->access$100(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 150
    const-class v2, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;

    .line 151
    invoke-static {v0, v2, v1}, Lcom/oculus/horizon/main/MainActivity;->newFragmentIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 152
    return-void
.end method
