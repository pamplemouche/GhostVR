.class public LO9;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final w:Ljava/lang/Runnable;

.field public final synthetic x:LQ9;


# direct methods
.method public constructor <init>(LQ9;)V
    .locals 0

    .line 1
    iput-object p1, p0, LO9;->x:LQ9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, LN9;

    invoke-direct {p1, p0}, LN9;-><init>(LO9;)V

    iput-object p1, p0, LO9;->w:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lqb;

    .line 2
    sget-boolean p3, LQ9;->L0:Z

    .line 3
    invoke-virtual {p1, p2}, Lqb;->a(I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 1
    iget-object v0, p0, LO9;->x:LQ9;

    iget-object v1, v0, LQ9;->h0:Lqb;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, LQ9;->f0:Landroid/widget/SeekBar;

    iget-object v1, p0, LO9;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    :cond_0
    iget-object v0, p0, LO9;->x:LQ9;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lqb;

    iput-object p1, v0, LQ9;->h0:Lqb;

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 1
    iget-object p1, p0, LO9;->x:LQ9;

    iget-object p1, p1, LQ9;->f0:Landroid/widget/SeekBar;

    iget-object v0, p0, LO9;->w:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/SeekBar;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
