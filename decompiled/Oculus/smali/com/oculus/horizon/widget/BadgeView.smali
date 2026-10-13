.class public Lcom/oculus/horizon/widget/BadgeView;
.super Landroid/widget/FrameLayout;
.source "BadgeView.java"

# interfaces
.implements Lcom/oculus/horizon/badges/badgecount/BadgeDisplayer;


# instance fields
.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oculus/horizon/widget/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/horizon/widget/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 34
    sget v1, Lcom/oculus/horizon/R$layout;->widget_badge_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    sget v0, Lcom/oculus/horizon/R$id;->text:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/BadgeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/widget/BadgeView;->mTextView:Landroid/widget/TextView;

    .line 36
    return-void
.end method


# virtual methods
.method public setBadgeCount(I)V
    .locals 5

    .prologue
    const/16 v3, 0x9

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 40
    if-gtz p1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/oculus/horizon/widget/BadgeView;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/widget/BadgeView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    if-le p1, v3, :cond_1

    .line 47
    iget-object v0, p0, Lcom/oculus/horizon/widget/BadgeView;->mTextView:Landroid/widget/TextView;

    const-string v1, "%d+"

    new-array v2, v2, [Ljava/lang/Object;

    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/facebook/common/string/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/widget/BadgeView;->mTextView:Landroid/widget/TextView;

    const-string v1, "%d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/facebook/common/string/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
