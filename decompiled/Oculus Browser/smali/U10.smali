.class public abstract LU10;
.super LhR0;
.source "PG"

# interfaces
.implements LW10;
.implements LuM0;


# instance fields
.field public N:Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;

.field public O:Landroid/widget/ImageView;

.field public final P:Z

.field public final Q:Z

.field public R:LwM0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LhR0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "ReorderBookmarks"

    .line 2
    invoke-static {p1}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result p1

    .line 3
    iput-boolean p1, p0, LU10;->P:Z

    if-eqz p1, :cond_0

    const-string p1, "BookmarksShowInFolder"

    .line 4
    invoke-static {p1}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    iput-boolean p1, p0, LU10;->Q:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1

    .line 9
    iget-object p1, p0, LiR0;->z:LrR0;

    iget-object v0, p0, LiR0;->A:Ljava/lang/Object;

    invoke-virtual {p1, v0}, LrR0;->a(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, LiR0;->setChecked(Z)V

    return-void
.end method

.method public a(LvM0;)V
    .locals 3

    .line 1
    iget p1, p1, LvM0;->b:I

    const v0, 0x7f1301af

    const/4 v1, 0x0

    if-eq p1, v0, :cond_6

    const v0, 0x7f1301ad

    if-eq p1, v0, :cond_5

    const v0, 0x7f1301ae

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/components/bookmarks/BookmarkId;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, LR10;->a(Landroid/content/Context;[Lorg/chromium/components/bookmarks/BookmarkId;)V

    const-string p1, "MobileBookmarkManagerMoveToFolder"

    .line 3
    invoke-static {p1}, LhV;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f1301ac

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x7f1301b9

    if-eq p1, v0, :cond_4

    const v0, 0x7f1303c7

    if-eq p1, v0, :cond_3

    const v0, 0x7f1303c5

    if-eq p1, v0, :cond_2

    :goto_0
    return-void

    .line 4
    :cond_2
    throw v1

    .line 5
    :cond_3
    throw v1

    .line 6
    :cond_4
    throw v1

    .line 7
    :cond_5
    throw v1

    .line 8
    :cond_6
    throw v1
.end method

.method public b()[LvM0;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-array v1, v1, [LvM0;

    new-instance v2, LvM0;

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1301af

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, LvM0;-><init>(Landroid/content/Context;IZ)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, LvM0;

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f1301ad

    invoke-direct {v2, v4, v6, v5}, LvM0;-><init>(Landroid/content/Context;IZ)V

    aput-object v2, v1, v5

    const/4 v2, 0x2

    new-instance v4, LvM0;

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f1301ae

    invoke-direct {v4, v6, v7, v3}, LvM0;-><init>(Landroid/content/Context;IZ)V

    aput-object v4, v1, v2

    const/4 v2, 0x3

    new-instance v3, LvM0;

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f1301ac

    invoke-direct {v3, v4, v6, v5}, LvM0;-><init>(Landroid/content/Context;IZ)V

    aput-object v3, v1, v2

    .line 6
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    iget-boolean v1, p0, LU10;->P:Z

    if-nez v1, :cond_0

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [LvM0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LvM0;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 9
    throw v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, LiR0;->onAttachedToWindow()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, LU10;->P:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, LiR0;->onClick(Landroid/view/View;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, LiR0;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, LU10;->N:Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;->b()V

    .line 3
    iget-object v0, p0, LU10;->N:Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;

    iget-object v1, p0, LU10;->R:LwM0;

    .line 4
    iget-object v0, v0, Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;->B:LWT;

    invoke-virtual {v0, v1}, LWT;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, LhR0;->onFinishInflate()V

    const v0, 0x7f0b0281

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;

    iput-object v0, p0, LU10;->N:Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;

    .line 3
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;->b()V

    .line 4
    iput-object p0, v0, Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;->A:LuM0;

    const v0, 0x7f0b016f

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LU10;->O:Landroid/widget/ImageView;

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LU10;->P:Z

    if-nez v0, :cond_0

    const-string v0, "MobileBookmarkManagerLongPressToggleSelect"

    .line 2
    invoke-static {v0}, LhV;->a(Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1}, LiR0;->onLongClick(Landroid/view/View;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method
