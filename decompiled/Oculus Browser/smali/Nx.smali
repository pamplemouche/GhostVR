.class public final LNx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LUx;


# instance fields
.field public final a:Le7;


# direct methods
.method public synthetic constructor <init>(LMx;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Le7;

    const/16 v0, 0xa

    .line 3
    invoke-direct {p1, v0}, Le7;-><init>(I)V

    .line 4
    iput-object p1, p0, LNx;->a:Le7;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, LNx;->a:Le7;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Le7;->c(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, LNx;->a:Le7;

    invoke-virtual {v0}, Le7;->a()V

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object v1, p0, LNx;->a:Le7;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1}, Le7;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, LNx;->a:Le7;

    invoke-virtual {v0}, Le7;->c()I

    move-result v0

    return v0
.end method
