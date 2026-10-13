.class Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder$4;
.super Ljava/lang/Object;
.source "ProfileHeaderViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;->bind(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder$4;->this$0:Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder$4;->this$0:Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;->access$100(Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->edit()Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setHasSeenAddProfileIcon(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->apply()V

    .line 237
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder$4;->this$0:Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;->access$200(Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;)Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->doOpenProfilePictureBottomSheet()V

    .line 238
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder$4;->this$0:Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;->access$500(Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/logging/OculusLogger;->reportOpenProfilePictureOptions()V

    .line 239
    return-void
.end method
