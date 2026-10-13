.class public LP1;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LJ6;

.field public final b:Landroid/util/SparseArray;

.field public final c:LQ6;

.field public final d:LJ6;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LJ6;

    invoke-direct {v0}, LJ6;-><init>()V

    iput-object v0, p0, LP1;->a:LJ6;

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, LP1;->b:Landroid/util/SparseArray;

    .line 4
    new-instance v0, LQ6;

    invoke-direct {v0}, LQ6;-><init>()V

    iput-object v0, p0, LP1;->c:LQ6;

    .line 5
    new-instance v0, LJ6;

    invoke-direct {v0}, LJ6;-><init>()V

    iput-object v0, p0, LP1;->d:LJ6;

    return-void
.end method
