.class public final synthetic Lfz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lyz;


# instance fields
.field public final a:Liz;


# direct methods
.method public constructor <init>(Liz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfz;->a:Liz;

    return-void
.end method


# virtual methods
.method public a(Loz;Lbx;)V
    .locals 5

    iget-object v0, p0, Lfz;->a:Liz;

    if-eqz v0, :cond_4

    const-string v1, "FeedSessionManagerImpl"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    .line 1
    iget v4, p2, Lbx;->a:I

    if-ne v4, v3, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "No Cards Found on TriggerRefresh, setting noCardsError"

    .line 2
    invoke-static {v1, p2, p1}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object p1, v0, Liz;->n:LFx;

    const/16 p2, 0x16

    const/4 v1, 0x4

    new-instance v2, Lcz;

    invoke-direct {v2, v0}, Lcz;-><init>(Liz;)V

    invoke-virtual {p1, p2, v1, v2}, LFx;->a(IILjava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-eqz p1, :cond_2

    .line 4
    iget v4, p2, Lbx;->a:I

    if-ne v4, v0, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "Pagination Error found"

    .line 5
    invoke-static {v1, v3, v0}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-interface {p1}, Loz;->c()Lcx;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1, p2}, Lcx;->a(Lbx;)V

    goto :goto_1

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "handling Pagination Error, didn\'t find Model Provider"

    .line 8
    invoke-static {v1, p2, p1}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-array v0, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 9
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v2

    .line 10
    iget p1, p2, Lbx;->a:I

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "unhandled modelErrorObserver: session, %s, error %s"

    .line 12
    invoke-static {v1, p1, v0}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_4
    const/4 p1, 0x0

    .line 13
    throw p1
.end method
