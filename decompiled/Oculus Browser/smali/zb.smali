.class public Lzb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LBb;


# direct methods
.method public constructor <init>(LBb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzb;->w:LBb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzb;->w:LBb;

    .line 2
    iget-object v1, v0, LBb;->D:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 3
    iget-object v0, v0, LBb;->D:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void

    .line 4
    :cond_0
    iget-object v0, v0, LBb;->D:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leb;

    const/4 v0, 0x0

    throw v0
.end method
