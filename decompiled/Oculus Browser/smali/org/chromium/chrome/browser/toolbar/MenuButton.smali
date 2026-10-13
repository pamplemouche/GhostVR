.class public Lorg/chromium/chrome/browser/toolbar/MenuButton;
.super Landroid/widget/FrameLayout;
.source "PG"

# interfaces
.implements Le00;


# instance fields
.field public A:Z

.field public B:LhN0;

.field public C:Lf00;

.field public w:Landroid/widget/ImageButton;

.field public x:Landroid/widget/ImageView;

.field public y:Z

.field public z:Ly00;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/toolbar/MenuButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 5
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/MenuButton;->C:Lf00;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, v0, Lf00;->B:LWT;

    invoke-virtual {v0, p0}, LWT;->b(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/MenuButton;->C:Lf00;

    :cond_0
    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/MenuButton;->w:Landroid/widget/ImageButton;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 3
    iput-boolean p2, p0, Lorg/chromium/chrome/browser/toolbar/MenuButton;->y:Z

    .line 4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/MenuButton;->c()V

    return-void
.end method

.method public b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/MenuButton;->w:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/MenuButton;->A:Z

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/MenuButton;->B:LhN0;

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LhN0;->a(Landroid/content/Context;)LhN0;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/MenuButton;->B:LhN0;

    .line 5
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/MenuButton;->w:Landroid/widget/ImageButton;

    invoke-static {v1}, LA7;->m(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/MenuButton;->w:Landroid/widget/ImageButton;

    .line 6
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/MenuButton;->w:Landroid/widget/ImageButton;

    .line 7
    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    .line 8
    iget-object v4, p0, Lorg/chromium/chrome/browser/toolbar/MenuButton;->w:Landroid/widget/ImageButton;

    .line 9
    invoke-virtual {v4}, Landroid/widget/ImageButton;->getPaddingBottom()I

    move-result v4

    .line 10
    iget-object v5, v0, LhN0;->y:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 11
    iget-object v1, v0, LhN0;->z:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, LhN0;->z:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 12
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/MenuButton;->B:LhN0;

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v2, p0, Lorg/chromium/chrome/browser/toolbar/MenuButton;->y:Z

    .line 14
    invoke-virtual {v0, v1, v2}, LhN0;->a(Landroid/content/res/Resources;Z)V

    .line 15
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/MenuButton;->B:LhN0;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 16
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/MenuButton;->B:LhN0;

    invoke-virtual {v0}, LhN0;->start()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    invoke-static {}, Lao0;->c()Lao0;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lao0;->d:LZn0;

    .line 3
    iget-object v0, v0, LZn0;->b:LXn0;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/MenuButton;->y:Z

    if-eqz v1, :cond_1

    iget v0, v0, LXn0;->c:I

    goto :goto_0

    :cond_1
    iget v0, v0, LXn0;->b:I

    .line 5
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/MenuButton;->x:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, LdT;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 7
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0b0260

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/MenuButton;->w:Landroid/widget/ImageButton;

    const v0, 0x7f0b025f

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/MenuButton;->x:Landroid/widget/ImageView;

    return-void
.end method
