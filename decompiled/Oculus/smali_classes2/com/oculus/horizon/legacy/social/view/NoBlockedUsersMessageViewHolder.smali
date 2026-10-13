.class public Lcom/oculus/horizon/legacy/social/view/NoBlockedUsersMessageViewHolder;
.super Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;
.source "NoBlockedUsersMessageViewHolder.java"


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;)V
    .locals 3

    .prologue
    .line 15
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->NO_BLOCKED_USER_MESSAGE:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    sget v1, Lcom/oculus/horizon/R$layout;->social_no_blocked_users_message:I

    const/4 v2, 0x0

    .line 17
    invoke-virtual {p2, v1, p1, v2}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 15
    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;-><init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;Landroid/view/View;)V

    .line 18
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 22
    instance-of v0, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$NoBlockedUsersMessage;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 23
    check-cast p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$NoBlockedUsersMessage;

    .line 26
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/NoBlockedUsersMessageViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$NoBlockedUsersMessage;->sectionSizeProvider:Lcom/oculus/horizon/legacy/social/adapters/SectionSizeProvider;

    invoke-interface {v1}, Lcom/oculus/horizon/legacy/social/adapters/SectionSizeProvider;->getHeightInPx()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 27
    return-void
.end method
