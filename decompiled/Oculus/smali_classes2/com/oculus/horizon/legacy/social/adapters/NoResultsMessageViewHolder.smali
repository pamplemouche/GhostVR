.class public Lcom/oculus/horizon/legacy/social/adapters/NoResultsMessageViewHolder;
.super Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;
.source "NoResultsMessageViewHolder.java"


# instance fields
.field private final mHeader:Landroid/widget/TextView;

.field private final mMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;)V
    .locals 3

    .prologue
    .line 18
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->NO_RESULTS_MESSAGE:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    sget v1, Lcom/oculus/horizon/R$layout;->social_no_results_message:I

    const/4 v2, 0x0

    .line 20
    invoke-virtual {p2, v1, p1, v2}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 18
    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;-><init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;Landroid/view/View;)V

    .line 22
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/NoResultsMessageViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->header:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/NoResultsMessageViewHolder;->mHeader:Landroid/widget/TextView;

    .line 23
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/NoResultsMessageViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/NoResultsMessageViewHolder;->mMessage:Landroid/widget/TextView;

    .line 24
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 28
    instance-of v0, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$NoResultsMessage;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 29
    check-cast p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$NoResultsMessage;

    .line 30
    iget v0, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$NoResultsMessage;->header:I

    iget v1, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$NoResultsMessage;->message:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Message must have a header, a body or both"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/NoResultsMessageViewHolder;->mHeader:Landroid/widget/TextView;

    iget v1, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$NoResultsMessage;->header:I

    invoke-static {v0, v1}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->setOptionalParameter(Landroid/widget/TextView;I)Z

    .line 34
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/NoResultsMessageViewHolder;->mMessage:Landroid/widget/TextView;

    iget v1, p1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$NoResultsMessage;->message:I

    invoke-static {v0, v1}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->setOptionalParameter(Landroid/widget/TextView;I)Z

    .line 35
    return-void

    .line 30
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
