.class public LYJ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LVp0;


# instance fields
.field public w:LjQ0;

.field public x:I

.field public final synthetic y:LkK0;


# direct methods
.method public constructor <init>(LkK0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LYJ0;->y:LkK0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, LYJ0;->w:LjQ0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, LYJ0;->y:LkK0;

    .line 3
    iget-object v0, v0, LkK0;->Y:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 4
    invoke-virtual {v0}, LQ8;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702e4

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v1, 0x7f060141

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 7
    iput v0, p0, LYJ0;->x:I

    .line 8
    iget-object v0, p0, LYJ0;->y:LkK0;

    .line 9
    iget-object v0, v0, LkK0;->Y:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 10
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->r0()Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    move-result-object v3

    .line 11
    new-instance v0, LjQ0;

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v7, p0, LYJ0;->y:LkK0;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, LjQ0;-><init>(Landroid/view/View;ZZILiQ0;)V

    iput-object v0, p0, LYJ0;->w:LjQ0;

    .line 12
    :cond_0
    iget-object v0, p0, LYJ0;->y:LkK0;

    .line 13
    iget-object v0, v0, LkK0;->Y:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 14
    invoke-static {v0}, Lorg/chromium/ui/base/DeviceFormFactor;->a(Landroid/content/Context;)Z

    move-result v0

    .line 15
    iget-object v1, p0, LYJ0;->w:LjQ0;

    if-nez v0, :cond_1

    .line 16
    iget-object v0, p0, LYJ0;->y:LkK0;

    .line 17
    iget-object v2, v0, LkK0;->F:Lorg/chromium/chrome/browser/toolbar/LocationBarModel;

    .line 18
    iget-boolean v2, v2, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->d:Z

    if-nez v2, :cond_1

    .line 19
    iget-object v0, v0, LkK0;->Y:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 20
    invoke-virtual {v0}, LOY;->H()LIl0;

    move-result-object v0

    invoke-interface {v0}, LIl0;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 21
    iget v0, p0, LYJ0;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 22
    :goto_0
    iput-object v0, v1, LjQ0;->f:Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 23
    iget-object p1, p0, LYJ0;->y:LkK0;

    .line 24
    iget-object p1, p1, LkK0;->F:Lorg/chromium/chrome/browser/toolbar/LocationBarModel;

    .line 25
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->d()LMm0;

    .line 26
    iget-object p1, p0, LYJ0;->y:LkK0;

    .line 27
    iget-object p1, p1, LkK0;->Y:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 28
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->K0()LlQ0;

    move-result-object p1

    iget-object v0, p0, LYJ0;->w:LjQ0;

    invoke-virtual {p1, v0}, LlQ0;->b(LjQ0;)V

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    .line 29
    iget-object p1, p0, LYJ0;->y:LkK0;

    .line 30
    iget-object p1, p1, LkK0;->Y:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 31
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->K0()LlQ0;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LlQ0;->a(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public b(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, LYJ0;->y:LkK0;

    .line 2
    iget-object p1, p1, LkK0;->F:Lorg/chromium/chrome/browser/toolbar/LocationBarModel;

    .line 3
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->d()LMm0;

    :cond_0
    return-void
.end method
