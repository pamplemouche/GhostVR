.class public final LM9;
.super Lcb;
.source "PG"


# instance fields
.field public final synthetic a:LQ9;


# direct methods
.method public constructor <init>(LQ9;)V
    .locals 0

    .line 1
    iput-object p1, p0, LM9;->a:LQ9;

    invoke-direct {p0}, Lcb;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lrb;Lqb;)V
    .locals 0

    .line 1
    iget-object p1, p0, LM9;->a:LQ9;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, LQ9;->d(Z)V

    return-void
.end method

.method public e(Lrb;Lqb;)V
    .locals 0

    .line 1
    iget-object p1, p0, LM9;->a:LQ9;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, LQ9;->d(Z)V

    return-void
.end method

.method public f(Lrb;Lqb;)V
    .locals 2

    .line 1
    iget-object p1, p0, LM9;->a:LQ9;

    iget-object p1, p1, LQ9;->m0:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    .line 2
    iget v0, p2, Lqb;->p:I

    .line 3
    sget-boolean v1, LQ9;->L0:Z

    if-eqz p1, :cond_0

    .line 4
    iget-object v1, p0, LM9;->a:LQ9;

    iget-object v1, v1, LQ9;->h0:Lqb;

    if-eq v1, p2, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method
