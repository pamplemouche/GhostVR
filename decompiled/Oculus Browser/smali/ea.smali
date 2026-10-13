.class public Lea;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic w:Landroid/support/v7/app/MediaRouteExpandCollapseButton;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/MediaRouteExpandCollapseButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lea;->w:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lea;->w:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    iget-boolean v1, v0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->A:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->A:Z

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->w:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object v0, p0, Lea;->w:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->w:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 4
    iget-object v0, p0, Lea;->w:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    iget-object v1, v0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, v0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->x:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object v0, p0, Lea;->w:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->x:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 7
    iget-object v0, p0, Lea;->w:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    iget-object v1, v0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lea;->w:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->B:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method
