.class public Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SocialAdapterViewHolder.java"


# static fields
.field private static final STATE_PRESSED:[I

.field private static final STATE_REGULAR:[I


# instance fields
.field public final type:Lcom/oculus/horizon/legacy/social/adapters/ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-array v0, v3, [I

    const v1, -0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;->STATE_REGULAR:[I

    .line 21
    new-array v0, v3, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;->STATE_PRESSED:[I

    return-void
.end method

.method public constructor <init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 27
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;->type:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    .line 28
    return-void
.end method

.method protected static getStateListDrawable(Landroid/content/res/Resources;III)Landroid/graphics/drawable/StateListDrawable;
    .locals 4

    .prologue
    .line 64
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 65
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 66
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 67
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 68
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, p3, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 69
    sget-object v3, Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;->STATE_REGULAR:[I

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 70
    sget-object v1, Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;->STATE_PRESSED:[I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 71
    return-object v0
.end method

.method protected static setTintedAcceptDenyActionDrawablesForHalloweenTheme(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$drawable;->social_deny_icon:I

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oculus/horizon/R$color;->oculus_black_10:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 37
    invoke-static {v0, v1, v5, v2}, Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;->getStateListDrawable(Landroid/content/res/Resources;III)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$drawable;->social_accept_icon:I

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/oculus/horizon/R$color;->oculus_black_10:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 43
    invoke-static {v1, v2, v5, v3}, Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;->getStateListDrawable(Landroid/content/res/Resources;III)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    .line 48
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    return-void
.end method

.method protected static setTintedBackgroundDrawableForHalloweenTheme(Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 56
    if-eqz v0, :cond_0

    .line 57
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 58
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    return-void
.end method
