.class public Lde;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LEd;


# instance fields
.field public final synthetic w:Lee;


# direct methods
.method public constructor <init>(Lee;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lde;->w:Lee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lqd;Z)V
    .locals 2

    .line 7
    instance-of v0, p1, LNd;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lqd;->c()Lqd;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lqd;->a(Z)V

    .line 9
    :cond_0
    iget-object v0, p0, Lde;->w:Lee;

    .line 10
    iget-object v0, v0, Lcd;->A:LEd;

    if-eqz v0, :cond_1

    .line 11
    invoke-interface {v0, p1, p2}, LEd;->a(Lqd;Z)V

    :cond_1
    return-void
.end method

.method public a(Lqd;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Lde;->w:Lee;

    move-object v2, p1

    check-cast v2, LNd;

    .line 2
    iget-object v2, v2, LNd;->X:Ltd;

    .line 3
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iput v2, v1, Lee;->V:I

    .line 4
    iget-object v1, p0, Lde;->w:Lee;

    .line 5
    iget-object v1, v1, Lcd;->A:LEd;

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v1, p1}, LEd;->a(Lqd;)Z

    move-result v0

    :cond_1
    return v0
.end method
