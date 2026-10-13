.class public LVo0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public A:Lk00;

.field public B:Z

.field public C:I

.field public final w:Landroid/view/View;

.field public final x:Ljava/lang/Runnable;

.field public final y:Ljava/lang/Runnable;

.field public final z:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LVo0;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LVo0;->w:Landroid/view/View;

    .line 3
    iput-object p2, p0, LVo0;->x:Ljava/lang/Runnable;

    .line 4
    new-instance p1, LUo0;

    invoke-direct {p1, p0}, LUo0;-><init>(LVo0;)V

    iput-object p1, p0, LVo0;->y:Ljava/lang/Runnable;

    .line 5
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, LVo0;->z:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 1
    iget-object v0, p0, LVo0;->A:Lk00;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, LVo0;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, LVo0;->z:Landroid/graphics/Rect;

    .line 4
    iget-object v0, v0, Lk00;->a:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 5
    iget-object v0, p0, LVo0;->z:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, LVo0;->A:Lk00;

    .line 6
    iget-object v1, v1, Lk00;->a:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, LVo0;->B:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, LVo0;->w:Landroid/view/View;

    iget-object v1, p0, LVo0;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    iget-object v0, p0, LVo0;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, LVo0;->B:Z

    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    .line 1
    invoke-virtual {p0}, LVo0;->a()I

    move-result v0

    iget v1, p0, LVo0;->C:I

    if-le v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LVo0;->x:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3
    invoke-virtual {p0}, LVo0;->b()V

    :cond_0
    return-void
.end method
