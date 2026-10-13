.class public LZd0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:Lde0;


# direct methods
.method public constructor <init>(Lde0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LZd0;->a:Lde0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 1
    iget-object p1, p0, LZd0;->a:Lde0;

    .line 2
    iget-object p1, p1, Lde0;->F:Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0, v0}, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->a(ZZ)V

    .line 4
    iget-object p1, p0, LZd0;->a:Lde0;

    .line 5
    iget-object p1, p1, Lde0;->F:Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;

    const/4 v0, 0x4

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object p1, p0, LZd0;->a:Lde0;

    .line 8
    iget-boolean v0, p1, Lde0;->B:Z

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p1, Lde0;->z:Lbe0;

    if-eqz v0, :cond_3

    .line 10
    iget-boolean p1, p1, Lde0;->L:Z

    .line 11
    check-cast v0, LFd0;

    .line 12
    iget-object v0, v0, LFd0;->a:LKd0;

    .line 13
    iget-object v1, v0, LKd0;->f:LJd0;

    check-cast v1, Lfe0;

    if-eqz p1, :cond_0

    .line 14
    iget-object p1, v1, Lfe0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->o()V

    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, v1, Lfe0;->b:Landroid/os/Handler;

    new-instance v2, Lee0;

    invoke-direct {v2, v1}, Lee0;-><init>(Lfe0;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    :goto_0
    invoke-virtual {v0}, LKd0;->a()V

    .line 17
    iget-object p1, v0, LKd0;->i:Lde0;

    .line 18
    iget-object v1, v0, LKd0;->k:Ljava/lang/Runnable;

    if-nez v1, :cond_1

    .line 19
    new-instance v1, LHd0;

    invoke-direct {v1, v0}, LHd0;-><init>(LKd0;)V

    iput-object v1, v0, LKd0;->k:Ljava/lang/Runnable;

    .line 20
    :cond_1
    iget-object v0, v0, LKd0;->k:Ljava/lang/Runnable;

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 22
    :cond_2
    invoke-virtual {p1}, Lde0;->c()V

    .line 23
    :cond_3
    :goto_1
    iget-object p1, p0, LZd0;->a:Lde0;

    .line 24
    invoke-virtual {p1}, Lde0;->b()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
