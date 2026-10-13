.class public LJe1;
.super LkW;
.source "PG"


# instance fields
.field public final a:I

.field public final synthetic b:LLe1;


# direct methods
.method public constructor <init>(LLe1;I)V
    .locals 0

    .line 1
    iput-object p1, p0, LJe1;->b:LLe1;

    invoke-direct {p0}, LkW;-><init>()V

    .line 2
    iput p2, p0, LJe1;->a:I

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, LJe1;->b:LLe1;

    iget v1, p0, LJe1;->a:I

    .line 2
    invoke-virtual {v0, v1}, LLe1;->c(I)LCe1;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, LCe1;

    .line 2
    iget-object v0, p0, LJe1;->b:LLe1;

    .line 3
    iget-object v0, v0, LLe1;->c:Landroid/util/SparseArray;

    .line 4
    iget v1, p0, LJe1;->a:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, LJe1;->b:LLe1;

    iget v1, p0, LJe1;->a:I

    .line 6
    iget-object v2, v0, LIe1;->b:LHe1;

    if-eqz v2, :cond_1

    .line 7
    iget v3, v0, LIe1;->a:I

    .line 8
    invoke-interface {v2, v3, v1, p1}, LHe1;->a(IILCe1;)V

    .line 9
    :cond_1
    iget-object p1, v0, LLe1;->c:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->remove(I)V

    :goto_0
    return-void
.end method
