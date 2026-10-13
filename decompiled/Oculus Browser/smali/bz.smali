.class public final synthetic Lbz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LJx;


# instance fields
.field public final a:LJx;

.field public final b:Llz;

.field public final c:LKx;


# direct methods
.method public constructor <init>(LJx;Llz;LKx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbz;->a:LJx;

    iput-object p2, p0, Lbz;->b:Llz;

    iput-object p3, p0, Lbz;->c:LKx;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lbz;->a:LJx;

    iget-object v1, p0, Lbz;->b:Llz;

    iget-object v2, p0, Lbz;->c:LKx;

    check-cast p1, Lsx;

    .line 1
    iget-boolean p1, p1, Lsx;->b:Z

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lsx;->b()Lsx;

    move-result-object p1

    invoke-interface {v0, p1}, LJx;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {v1, v2}, Llz;->a(LKx;)Lsx;

    move-result-object p1

    .line 4
    iget-boolean v1, p1, Lsx;->b:Z

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p1}, Lsx;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lsx;->a(Ljava/lang/Object;)Lsx;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lsx;->b()Lsx;

    move-result-object p1

    .line 7
    :goto_0
    invoke-interface {v0, p1}, LJx;->a(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
