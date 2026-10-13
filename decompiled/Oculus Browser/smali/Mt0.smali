.class public LMt0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final A:Landroid/view/View;

.field public final B:Landroid/content/res/Resources;

.field public final C:Lbd0;

.field public final D:I

.field public final w:Lle1;

.field public final x:LBd1;

.field public y:LXd1;

.field public z:Lle1;


# direct methods
.method public constructor <init>(Lle1;LXd1;LBd1;Landroid/view/View;Landroid/content/res/Resources;Lbd0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LMt0;->w:Lle1;

    .line 3
    iput-object p3, p0, LMt0;->x:LBd1;

    .line 4
    iput-object p2, p0, LMt0;->y:LXd1;

    .line 5
    iput-object p4, p0, LMt0;->A:Landroid/view/View;

    .line 6
    iput-object p5, p0, LMt0;->B:Landroid/content/res/Resources;

    .line 7
    iput-object p6, p0, LMt0;->C:Lbd0;

    .line 8
    iput p7, p0, LMt0;->D:I

    .line 9
    invoke-virtual {p4, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, LMt0;->B:Landroid/content/res/Resources;

    iget v1, p0, LMt0;->D:I

    const v2, 0x7f0702e2

    .line 2
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    neg-int v2, v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v2, v0

    :cond_0
    sub-int/2addr p1, v2

    .line 4
    iget-object v0, p0, LMt0;->C:Lbd0;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    sub-int/2addr p1, v0

    .line 5
    iget-object v1, p0, LMt0;->B:Landroid/content/res/Resources;

    const v2, 0x7f070248

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-lt p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p9, p7

    sub-int/2addr p5, p3

    if-ne p5, p9, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object p1, LZ01;->a:LFW;

    new-instance p2, LKt0;

    invoke-direct {p2, p0, p5}, LKt0;-><init>(LMt0;I)V

    const-wide/16 p3, 0x0

    .line 2
    invoke-static {p1, p2, p3, p4}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void
.end method
