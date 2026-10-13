.class public LSb1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:LZb1;


# direct methods
.method public constructor <init>(LZb1;)V
    .locals 0

    .line 1
    iput-object p1, p0, LSb1;->a:LZb1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    .line 1
    iget-object p1, p0, LSb1;->a:LZb1;

    .line 2
    iget-boolean v0, p1, LZb1;->y:Z

    if-eqz v0, :cond_2

    .line 3
    iget-object p1, p1, LZb1;->K:LRb1;

    const/16 v0, 0xff

    .line 4
    invoke-virtual {p1, v0}, LRb1;->setAlpha(I)V

    .line 5
    iget-object p1, p0, LSb1;->a:LZb1;

    .line 6
    iget-object p1, p1, LZb1;->K:LRb1;

    .line 7
    invoke-virtual {p1}, LRb1;->start()V

    .line 8
    iget-object p1, p0, LSb1;->a:LZb1;

    .line 9
    iget-boolean v0, p1, LZb1;->O:Z

    if-eqz v0, :cond_3

    .line 10
    iget-object p1, p1, LZb1;->w:LXb1;

    if-eqz p1, :cond_3

    .line 11
    check-cast p1, LUZ;

    .line 12
    iget-object v0, p1, LUZ;->a:La00;

    iget-object p1, p1, LUZ;->b:Landroid/content/Context;

    .line 13
    invoke-virtual {v0}, La00;->b()V

    .line 14
    sget-object v1, LZ01;->a:LFW;

    .line 15
    iget-object v2, v0, La00;->C:Ljava/lang/Runnable;

    if-nez v2, :cond_0

    .line 16
    new-instance v2, LXZ;

    invoke-direct {v2, v0}, LXZ;-><init>(La00;)V

    iput-object v2, v0, La00;->C:Ljava/lang/Runnable;

    .line 17
    :cond_0
    iget-object v2, v0, La00;->C:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1d4c

    .line 18
    invoke-static {v1, v2, v3, v4}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    .line 19
    iget-object v1, v0, La00;->E:Ljava/lang/String;

    if-nez v1, :cond_1

    const v1, 0x7f1300fc

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, La00;->E:Ljava/lang/String;

    .line 21
    :cond_1
    iget-object p1, v0, La00;->y:LZb1;

    iget-object v1, v0, La00;->E:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 22
    iget-object p1, v0, La00;->z:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->A()V

    const-string p1, "MobilePullGestureReload"

    .line 23
    invoke-static {p1}, LhV;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :cond_2
    invoke-virtual {p1}, LZb1;->a()V

    .line 25
    :cond_3
    :goto_0
    iget-object p1, p0, LSb1;->a:LZb1;

    .line 26
    iget-object v0, p1, LZb1;->G:LMb1;

    .line 27
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    .line 28
    iput v0, p1, LZb1;->B:I

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
