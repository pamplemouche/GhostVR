.class public LNe1;
.super LIe1;
.source "PG"


# instance fields
.field public final c:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(ILHe1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LIe1;-><init>(ILHe1;)V

    .line 2
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, LNe1;->c:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, LNe1;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LMe1;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, LMe1;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, LIe1;->b:LHe1;

    if-eqz v1, :cond_1

    .line 4
    iget v2, p0, LIe1;->a:I

    .line 5
    invoke-interface {v1, v2, p1, v0}, LHe1;->a(IILCe1;)V

    :cond_1
    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method
