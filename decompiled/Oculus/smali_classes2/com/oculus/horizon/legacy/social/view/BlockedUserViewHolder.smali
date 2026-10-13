.class public Lcom/oculus/horizon/legacy/social/view/BlockedUserViewHolder;
.super Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;
.source "BlockedUserViewHolder.java"


# instance fields
.field private final mAlias:Landroid/widget/TextView;

.field private mUser:Lcom/oculus/horizon/social/api/BlockedUser;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;Lcom/oculus/horizon/legacy/social/SocialManager;Lcom/oculus/horizon/legacy/social/SocialDialogFactory;)V
    .locals 3

    .prologue
    .line 30
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->FRIEND:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    sget v1, Lcom/oculus/horizon/R$layout;->social_blocked_user:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;-><init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;Landroid/view/View;)V

    .line 32
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/BlockedUserViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->alias:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/view/BlockedUserViewHolder;->mAlias:Landroid/widget/TextView;

    .line 34
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/BlockedUserViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/oculus/horizon/legacy/social/view/BlockedUserViewHolder$1;

    invoke-direct {v1, p0, p4, p2, p3}, Lcom/oculus/horizon/legacy/social/view/BlockedUserViewHolder$1;-><init>(Lcom/oculus/horizon/legacy/social/view/BlockedUserViewHolder;Lcom/oculus/horizon/legacy/social/SocialDialogFactory;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;Lcom/oculus/horizon/legacy/social/SocialManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/legacy/social/view/BlockedUserViewHolder;)Lcom/oculus/horizon/social/api/BlockedUser;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/BlockedUserViewHolder;->mUser:Lcom/oculus/horizon/social/api/BlockedUser;

    return-object v0
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 51
    instance-of v0, p1, Lcom/oculus/horizon/social/api/BlockedUser;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 52
    check-cast p1, Lcom/oculus/horizon/social/api/BlockedUser;

    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/view/BlockedUserViewHolder;->mUser:Lcom/oculus/horizon/social/api/BlockedUser;

    .line 54
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/BlockedUserViewHolder;->mAlias:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/BlockedUserViewHolder;->mUser:Lcom/oculus/horizon/social/api/BlockedUser;

    iget-object v1, v1, Lcom/oculus/horizon/social/api/BlockedUser;->alias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method
