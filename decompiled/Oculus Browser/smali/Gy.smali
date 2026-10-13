.class public final synthetic LGy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LJx;


# instance fields
.field public final a:LKy;

.field public final b:Ljava/util/Set;

.field public final c:Ljava/util/Set;

.field public final d:LJx;

.field public final e:I

.field public final f:LfQ;


# direct methods
.method public constructor <init>(LKy;Ljava/util/Set;Ljava/util/Set;LJx;ILfQ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LGy;->a:LKy;

    iput-object p2, p0, LGy;->b:Ljava/util/Set;

    iput-object p3, p0, LGy;->c:Ljava/util/Set;

    iput-object p4, p0, LGy;->d:LJx;

    iput p5, p0, LGy;->e:I

    iput-object p6, p0, LGy;->f:LfQ;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, LGy;->a:LKy;

    iget-object v1, p0, LGy;->b:Ljava/util/Set;

    iget-object v2, p0, LGy;->c:Ljava/util/Set;

    iget-object v3, p0, LGy;->d:LJx;

    iget v4, p0, LGy;->e:I

    iget-object v5, p0, LGy;->f:LfQ;

    check-cast p1, Lsx;

    .line 1
    iget-object v6, v0, LKy;->f:LYw;

    invoke-virtual {v6}, LYw;->b()V

    .line 2
    iget-boolean v6, p1, Lsx;->b:Z

    if-eqz v6, :cond_1

    .line 3
    invoke-interface {v1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 4
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 5
    invoke-virtual {p1}, Lsx;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LfQ;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    add-int/2addr v2, v4

    .line 6
    invoke-virtual {v0, v1, p1, v3, v2}, LKy;->a(Ljava/util/Set;LfQ;LJx;I)V

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {p1}, Lsx;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LfQ;

    invoke-static {p1}, Lsx;->a(Ljava/lang/Object;)Lsx;

    move-result-object p1

    invoke-interface {v3, p1}, LJx;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    .line 8
    invoke-static {}, Lsx;->b()Lsx;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {v5}, Lsx;->a(Ljava/lang/Object;)Lsx;

    move-result-object p1

    :goto_0
    invoke-interface {v3, p1}, LJx;->a(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
