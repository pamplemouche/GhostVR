.class public LCh;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:[I

.field public final synthetic g:Landroid/support/v7/widget/StaggeredGridLayoutManager;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, LCh;->g:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, LCh;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, LCh;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LCh;->g:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s:Lug;

    invoke-virtual {v0}, Lug;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LCh;->g:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s:Lug;

    .line 2
    invoke-virtual {v0}, Lug;->f()I

    move-result v0

    :goto_0
    iput v0, p0, LCh;->b:I

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, LCh;->a:I

    const/high16 v1, -0x80000000

    .line 2
    iput v1, p0, LCh;->b:I

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, LCh;->c:Z

    .line 4
    iput-boolean v1, p0, LCh;->d:Z

    .line 5
    iput-boolean v1, p0, LCh;->e:Z

    .line 6
    iget-object v1, p0, LCh;->f:[I

    if-eqz v1, :cond_0

    .line 7
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    return-void
.end method
