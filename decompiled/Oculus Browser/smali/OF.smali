.class public LOF;
.super LyF;
.source "PG"


# instance fields
.field public final a:LhG;

.field public final b:Ljava/lang/Object;

.field public final c:LhG;

.field public final d:LNF;


# direct methods
.method public constructor <init>(LhG;Ljava/lang/Object;LhG;LNF;)V
    .locals 2

    .line 1
    invoke-direct {p0}, LyF;-><init>()V

    if-eqz p1, :cond_2

    .line 2
    iget-object v0, p4, LNF;->y:LJG;

    .line 3
    sget-object v1, LJG;->I:LJG;

    if-ne v0, v1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null messageDefaultInstance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iput-object p1, p0, LOF;->a:LhG;

    .line 6
    iput-object p2, p0, LOF;->b:Ljava/lang/Object;

    .line 7
    iput-object p3, p0, LOF;->c:LhG;

    .line 8
    iput-object p4, p0, LOF;->d:LNF;

    return-void

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null containingTypeDefaultInstance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, LOF;->d:LNF;

    .line 2
    iget-object v1, v0, LNF;->y:LJG;

    .line 3
    iget-object v1, v1, LJG;->w:LKG;

    .line 4
    sget-object v2, LKG;->D:LKG;

    if-ne v1, v2, :cond_0

    .line 5
    iget-object v0, v0, LNF;->w:LWF;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, LWF;->a(I)LVF;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, LOF;->d:LNF;

    .line 2
    iget-object v0, v0, LNF;->y:LJG;

    .line 3
    iget-object v0, v0, LJG;->w:LKG;

    .line 4
    sget-object v1, LKG;->D:LKG;

    if-ne v0, v1, :cond_0

    .line 5
    check-cast p1, LVF;

    invoke-interface {p1}, LVF;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    return-object p1
.end method
