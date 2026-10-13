.class public Lcom/oculus/horizon/events/view/SubscriberAvatarsWithCountView;
.super Landroid/widget/FrameLayout;
.source "SubscriberAvatarsWithCountView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 25
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oculus/horizon/events/view/SubscriberAvatarsWithCountView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/horizon/events/view/SubscriberAvatarsWithCountView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method


# virtual methods
.method public bind(Lcom/oculus/horizon/events/api/Event;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/oculus/horizon/events/view/SubscriberAvatarsWithCountView;->removeAllViews()V

    .line 45
    invoke-virtual {p0}, Lcom/oculus/horizon/events/view/SubscriberAvatarsWithCountView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 46
    sget v0, Lcom/oculus/horizon/R$dimen;->events_subscriber_avatar_bubble_size:I

    .line 47
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v1, Lcom/oculus/horizon/R$dimen;->events_subscriber_avatar_bubble_overlap:I

    .line 48
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int v5, v0, v1

    .line 52
    iget-object v0, p1, Lcom/oculus/horizon/events/api/Event;->subscribed_friends:Lcom/oculus/horizon/events/api/Event$SubscribedFriends;

    iget-object v0, v0, Lcom/oculus/horizon/events/api/Event$SubscribedFriends;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/events/api/Event$SubscribedFriend;

    .line 53
    const/4 v1, 0x5

    if-ne v2, v1, :cond_1

    .line 72
    :cond_0
    iget v0, p1, Lcom/oculus/horizon/events/api/Event;->subscribed_users_count:I

    sub-int v1, v0, v2

    .line 73
    if-gtz v1, :cond_3

    .line 88
    :goto_1
    return-void

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/horizon/events/view/SubscriberAvatarsWithCountView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v7, Lcom/oculus/horizon/R$layout;->events_subscriber_bubble:I

    .line 59
    invoke-virtual {v1, v7, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 60
    iget-object v7, v0, Lcom/oculus/horizon/events/api/Event$SubscribedFriend;->profile_photo:Lcom/oculus/horizon/events/api/Event$Image;

    if-eqz v7, :cond_2

    .line 61
    iget-object v0, v0, Lcom/oculus/horizon/events/api/Event$SubscribedFriend;->profile_photo:Lcom/oculus/horizon/events/api/Event$Image;

    iget-object v0, v0, Lcom/oculus/horizon/events/api/Event$Image;->uri:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 64
    :cond_2
    invoke-virtual {v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 65
    mul-int v7, v2, v5

    invoke-virtual {v0, v7, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 66
    invoke-virtual {p0, v1}, Lcom/oculus/horizon/events/view/SubscriberAvatarsWithCountView;->addView(Landroid/view/View;)V

    .line 67
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 68
    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {p0}, Lcom/oculus/horizon/events/view/SubscriberAvatarsWithCountView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v6, Lcom/oculus/horizon/R$layout;->events_subscriber_count_bubble:I

    .line 79
    invoke-virtual {v0, v6, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 80
    sget v6, Lcom/oculus/horizon/R$string;->events_remaining_subscriber_count:I

    .line 82
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    .line 81
    invoke-static {v4, v6}, Lcom/facebook/common/util/StringLocaleUtil;->formatStrLocaleSensitive(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 86
    mul-int/2addr v2, v5

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 87
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/events/view/SubscriberAvatarsWithCountView;->addView(Landroid/view/View;)V

    goto :goto_1
.end method
