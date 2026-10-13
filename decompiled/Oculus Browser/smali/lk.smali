.class public abstract Llk;
.super Lms;
.source "PG"


# instance fields
.field public r:LPs;

.field public final s:Z

.field public final synthetic t:Lok;


# direct methods
.method public constructor <init>(Lok;LHm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llk;->t:Lok;

    .line 2
    invoke-direct {p0, p2}, Lms;-><init>(LHm;)V

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Llk;->s:Z

    .line 4
    new-instance p2, LCk;

    invoke-direct {p2, p0, p1}, LCk;-><init>(Llk;Lok;)V

    iput-object p2, p0, Llk;->r:LPs;

    return-void
.end method

.method public constructor <init>(Lok;LHm;Z)V
    .locals 0

    .line 5
    iput-object p1, p0, Llk;->t:Lok;

    .line 6
    invoke-direct {p0, p2}, Lms;-><init>(LHm;)V

    .line 7
    iput-boolean p3, p0, Llk;->s:Z

    .line 8
    new-instance p2, LCk;

    invoke-direct {p2, p0, p1}, LCk;-><init>(Llk;Lok;)V

    iput-object p2, p0, Llk;->r:LPs;

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/google/android/gms/common/api/Status;)LLm;
    .locals 1

    .line 11
    new-instance v0, LDk;

    invoke-direct {v0, p1}, LDk;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic a(Lpm;)V
    .locals 3

    .line 1
    check-cast p1, Lss;

    .line 2
    iget-boolean v0, p0, Llk;->s:Z

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Llk;->t:Lok;

    .line 4
    iget-object v0, v0, Lok;->g:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhk;

    .line 6
    check-cast v1, Lgs;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    throw v2

    .line 8
    :cond_1
    iget-object v0, p0, Llk;->t:Lok;

    iget-object v0, v0, Lok;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgk;

    if-eqz v1, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    throw v2

    .line 10
    :cond_3
    invoke-virtual {p0, p1}, Llk;->a(Lss;)V

    return-void
.end method

.method public abstract a(Lss;)V
.end method
