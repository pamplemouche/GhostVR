.class public Landroid/support/v7/app/MediaRouteExpandCollapseButton;
.super Landroid/widget/ImageButton;
.source "PG"


# instance fields
.field public A:Z

.field public B:Landroid/view/View$OnClickListener;

.field public final w:Landroid/graphics/drawable/AnimationDrawable;

.field public final x:Landroid/graphics/drawable/AnimationDrawable;

.field public final y:Ljava/lang/String;

.field public final z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f080270

    .line 2
    invoke-static {p1, p2}, LR3;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p2, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->w:Landroid/graphics/drawable/AnimationDrawable;

    const p2, 0x7f08026f

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 4
    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p2, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->x:Landroid/graphics/drawable/AnimationDrawable;

    .line 5
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    .line 6
    invoke-static {p1, v0}, Lfa;->a(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 7
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->w:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/AnimationDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 8
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->x:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/AnimationDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const p2, 0x7f1303fa

    .line 9
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->y:Ljava/lang/String;

    const p2, 0x7f1303f8

    .line 10
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->z:Ljava/lang/String;

    .line 11
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->w:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->y:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 13
    new-instance p1, Lea;

    invoke-direct {p1, p0}, Lea;-><init>(Landroid/support/v7/app/MediaRouteExpandCollapseButton;)V

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->B:Landroid/view/View$OnClickListener;

    return-void
.end method
