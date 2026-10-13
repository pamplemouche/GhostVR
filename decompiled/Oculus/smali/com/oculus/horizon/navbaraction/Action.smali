.class public Lcom/oculus/horizon/navbaraction/Action;
.super Ljava/lang/Object;
.source "Action.java"


# static fields
.field private static final STATE_PRESSED:[I

.field private static final STATE_REGULAR:[I

.field private static final STATE_SELECTED:[I


# instance fields
.field private mBadgeView:Lcom/oculus/horizon/badges/badgecount/BadgeDisplayer;

.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;

.field private mView:Landroid/view/View;

.field private mViewIdRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oculus/horizon/navbaraction/Action;->STATE_REGULAR:[I

    .line 24
    new-array v0, v3, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/oculus/horizon/navbaraction/Action;->STATE_PRESSED:[I

    .line 25
    new-array v0, v3, [I

    const v1, 0x10100a1

    aput v1, v0, v2

    sput-object v0, Lcom/oculus/horizon/navbaraction/Action;->STATE_SELECTED:[I

    return-void

    .line 21
    nop

    :array_0
    .array-data 4
        -0x10100a7
        -0x10100a1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lcom/facebook/inject/ForAppContext;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/oculus/horizon/navbaraction/Action;->mViewIdRes:I

    .line 42
    iput-object p1, p0, Lcom/oculus/horizon/navbaraction/Action;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/oculus/horizon/navbaraction/Action;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/oculus/horizon/navbaraction/Action;->mView:Landroid/view/View;

    return-object v0
.end method

.method public setBadgeCount(I)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/oculus/horizon/navbaraction/Action;->mBadgeView:Lcom/oculus/horizon/badges/badgecount/BadgeDisplayer;

    invoke-interface {v0, p1}, Lcom/oculus/horizon/badges/badgecount/BadgeDisplayer;->setBadgeCount(I)V

    .line 91
    return-void
.end method

.method public setIcon(I)Lcom/oculus/horizon/navbaraction/Action;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oculus/horizon/navbaraction/Action;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/navbaraction/Action;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 62
    return-object p0
.end method

.method public setIconWithTints(III)Lcom/oculus/horizon/navbaraction/Action;
    .locals 6

    .prologue
    .line 72
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 73
    iget-object v1, p0, Lcom/oculus/horizon/navbaraction/Action;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 74
    iget-object v2, p0, Lcom/oculus/horizon/navbaraction/Action;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 75
    iget-object v3, p0, Lcom/oculus/horizon/navbaraction/Action;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 76
    iget-object v4, p0, Lcom/oculus/horizon/navbaraction/Action;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 76
    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 78
    iget-object v4, p0, Lcom/oculus/horizon/navbaraction/Action;->mContext:Landroid/content/Context;

    .line 79
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 78
    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 80
    iget-object v4, p0, Lcom/oculus/horizon/navbaraction/Action;->mContext:Landroid/content/Context;

    .line 81
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 80
    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 82
    sget-object v4, Lcom/oculus/horizon/navbaraction/Action;->STATE_REGULAR:[I

    invoke-virtual {v0, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 83
    sget-object v1, Lcom/oculus/horizon/navbaraction/Action;->STATE_PRESSED:[I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 84
    sget-object v1, Lcom/oculus/horizon/navbaraction/Action;->STATE_SELECTED:[I

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 85
    iput-object v0, p0, Lcom/oculus/horizon/navbaraction/Action;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 86
    return-object p0
.end method

.method public setSelected(Z)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/oculus/horizon/navbaraction/Action;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/oculus/horizon/navbaraction/Action;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 124
    :cond_0
    return-void
.end method

.method public setTag(Ljava/lang/Object;)Lcom/oculus/horizon/navbaraction/Action;
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/oculus/horizon/navbaraction/Action;->mTag:Ljava/lang/Object;

    .line 99
    return-object p0
.end method

.method public setText(I)Lcom/oculus/horizon/navbaraction/Action;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 51
    iget-object v0, p0, Lcom/oculus/horizon/navbaraction/Action;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/navbaraction/Action;->mText:Ljava/lang/CharSequence;

    .line 52
    return-object p0
.end method

.method public setViewId(I)Lcom/oculus/horizon/navbaraction/Action;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 66
    iput p1, p0, Lcom/oculus/horizon/navbaraction/Action;->mViewIdRes:I

    .line 67
    return-object p0
.end method

.method public update(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 103
    iput-object p1, p0, Lcom/oculus/horizon/navbaraction/Action;->mView:Landroid/view/View;

    .line 104
    iget v0, p0, Lcom/oculus/horizon/navbaraction/Action;->mViewIdRes:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/oculus/horizon/navbaraction/Action;->mView:Landroid/view/View;

    iget v1, p0, Lcom/oculus/horizon/navbaraction/Action;->mViewIdRes:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 108
    :cond_0
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 109
    const v1, 0x1020014

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 110
    sget v2, Lcom/oculus/horizon/R$id;->badge:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oculus/horizon/badges/badgecount/BadgeDisplayer;

    iput-object v2, p0, Lcom/oculus/horizon/navbaraction/Action;->mBadgeView:Lcom/oculus/horizon/badges/badgecount/BadgeDisplayer;

    .line 112
    iget-object v2, p0, Lcom/oculus/horizon/navbaraction/Action;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 113
    iget-object v2, p0, Lcom/oculus/horizon/navbaraction/Action;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/navbaraction/Action;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/oculus/horizon/navbaraction/Action;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :cond_2
    return-void
.end method
