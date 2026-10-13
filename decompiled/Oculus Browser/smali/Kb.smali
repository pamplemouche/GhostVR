.class public final LKb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lvb;


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(LLb;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LKb;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)V
    .locals 1

    .line 1
    iget-object p1, p0, LKb;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LLb;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, LOb;->b:LNb;

    if-eqz p1, :cond_0

    .line 3
    check-cast p1, Lmb;

    .line 4
    iget-boolean v0, p1, Lmb;->b:Z

    if-nez v0, :cond_0

    iget-object p1, p1, Lmb;->c:Lnb;

    iget-object p1, p1, Lnb;->o:Lqb;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, p2}, Lqb;->b(I)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;I)V
    .locals 1

    .line 1
    iget-object p1, p0, LKb;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LLb;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, LOb;->b:LNb;

    if-eqz p1, :cond_0

    .line 3
    check-cast p1, Lmb;

    .line 4
    iget-boolean v0, p1, Lmb;->b:Z

    if-nez v0, :cond_0

    iget-object p1, p1, Lmb;->c:Lnb;

    iget-object p1, p1, Lnb;->o:Lqb;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, p2}, Lqb;->a(I)V

    :cond_0
    return-void
.end method
