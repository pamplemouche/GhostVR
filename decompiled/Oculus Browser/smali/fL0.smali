.class public LfL0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LJK0;


# instance fields
.field public final a:LQK0;

.field public b:LIK0;

.field public c:Lot0;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/toolbar/top/ToolbarControlContainer;LQK0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LdL0;

    invoke-direct {v0, p0}, LdL0;-><init>(LfL0;)V

    iput-object v0, p0, LfL0;->c:Lot0;

    .line 3
    iput-object p2, p0, LfL0;->a:LQK0;

    .line 4
    instance-of p2, p2, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;

    if-eqz p2, :cond_0

    .line 5
    new-instance p2, LIK0;

    .line 6
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b046a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-direct {p2, v0}, LIK0;-><init>(Landroid/view/ViewStub;)V

    iput-object p2, p0, LfL0;->b:LIK0;

    .line 7
    :cond_0
    iput-object p0, p1, Lorg/chromium/chrome/browser/toolbar/top/ToolbarControlContainer;->y:LJK0;

    .line 8
    iget-object p2, p1, Lorg/chromium/chrome/browser/toolbar/top/ToolbarControlContainer;->z:Lorg/chromium/chrome/browser/toolbar/top/ToolbarControlContainer$ToolbarViewResourceFrameLayout;

    .line 9
    iget-object p2, p2, Lorg/chromium/chrome/browser/ui/widget/ViewResourceFrameLayout;->x:LOe1;

    .line 10
    check-cast p2, LMK0;

    .line 11
    iput-object p0, p2, LMK0;->G:LJK0;

    .line 12
    iget-object v0, p0, LfL0;->a:LQK0;

    invoke-virtual {v0}, LQK0;->i()I

    move-result v0

    .line 13
    iput v0, p2, LMK0;->H:I

    const p2, 0x7f0b04a0

    .line 14
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 15
    instance-of p2, p2, Lorg/chromium/chrome/browser/toolbar/top/ToolbarTablet;

    if-eqz p2, :cond_1

    const p2, 0x7f0802e3

    .line 16
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 17
    :cond_1
    invoke-static {}, Lpt0;->f()Lpt0;

    move-result-object p1

    iget-object p2, p0, LfL0;->c:Lot0;

    .line 18
    iget-object p1, p1, Lpt0;->b:LWT;

    invoke-virtual {p1, p2}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()Lorg/chromium/chrome/browser/toolbar/MenuButton;
    .locals 2

    .line 1
    iget-object v0, p0, LfL0;->a:LQK0;

    invoke-virtual {v0}, LQK0;->h()Landroid/view/View;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lorg/chromium/chrome/browser/toolbar/MenuButton;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/chromium/chrome/browser/toolbar/MenuButton;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
