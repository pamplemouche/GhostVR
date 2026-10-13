.class public abstract Lrs;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LJs;

.field public final b:Ljava/lang/String;

.field public c:LOs;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lzs;->a(Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lrs;->b:Ljava/lang/String;

    .line 4
    new-instance p1, LJs;

    invoke-direct {p1, p2}, LJs;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lrs;->a:LJs;

    .line 5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lrs;->a:LJs;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 7
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    const-string p3, "[%s] "

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p1, LJs;->d:Ljava/lang/String;

    goto :goto_1

    :cond_1
    throw p2

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lrs;->c:LOs;

    iget-object v1, p0, Lrs;->b:Ljava/lang/String;

    check-cast v0, Ljk;

    .line 2
    iget-object v2, v0, Ljk;->a:LHm;

    if-eqz v2, :cond_1

    .line 3
    iget-object v3, v0, Ljk;->c:Lok;

    .line 4
    iget-object v3, v3, Lok;->e:Lxj;

    .line 5
    check-cast v3, Lwj;

    if-eqz v3, :cond_0

    .line 6
    new-instance v3, LSl;

    invoke-direct {v3, v2, v1, p1}, LSl;-><init>(LHm;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, LHm;->a(LSm;)LSm;

    move-result-object p1

    .line 7
    new-instance v1, LAk;

    invoke-direct {v1, v0, p2, p3}, LAk;-><init>(Ljk;J)V

    .line 8
    invoke-virtual {p1, v1}, LJm;->a(LMm;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 9
    throw p1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No GoogleApiClient available"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()J
    .locals 5

    .line 1
    iget-object v0, p0, Lrs;->c:LOs;

    check-cast v0, Ljk;

    .line 2
    iget-wide v1, v0, Ljk;->b:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Ljk;->b:J

    return-wide v1
.end method
