.class public Loe1;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lqe1;

.field public final c:Lne1;

.field public final d:Lpe1;


# direct methods
.method public constructor <init>(Lqe1;Ljava/lang/Object;Lne1;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lme1;

    invoke-direct {v0, p0}, Lme1;-><init>(Loe1;)V

    iput-object v0, p0, Loe1;->d:Lpe1;

    .line 3
    iput-object p1, p0, Loe1;->b:Lqe1;

    .line 4
    iput-object p2, p0, Loe1;->a:Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Loe1;->c:Lne1;

    if-eqz p4, :cond_0

    .line 6
    invoke-virtual {p1}, Lqe1;->a()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 7
    iget-object p4, p0, Loe1;->c:Lne1;

    iget-object v0, p0, Loe1;->b:Lqe1;

    iget-object v1, p0, Loe1;->a:Ljava/lang/Object;

    invoke-interface {p4, v0, v1, p3}, Lne1;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p2, p0, Loe1;->d:Lpe1;

    .line 9
    iget-object p1, p1, Lqe1;->a:LWT;

    invoke-virtual {p1, p2}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Lqe1;Ljava/lang/Object;Lne1;)Loe1;
    .locals 2

    .line 1
    new-instance v0, Loe1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Loe1;-><init>(Lqe1;Ljava/lang/Object;Lne1;Z)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    iget-object v0, p0, Loe1;->b:Lqe1;

    iget-object v1, p0, Loe1;->d:Lpe1;

    .line 3
    iget-object v0, v0, Lqe1;->a:LWT;

    invoke-virtual {v0, v1}, LWT;->b(Ljava/lang/Object;)Z

    return-void
.end method
