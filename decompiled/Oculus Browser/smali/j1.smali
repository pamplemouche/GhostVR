.class public Lj1;
.super LF1;
.source "PG"


# instance fields
.field public w:Z

.field public final synthetic x:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Ll1;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lj1;->x:Landroid/view/ViewGroup;

    invoke-direct {p0}, LF1;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lj1;->w:Z

    return-void
.end method


# virtual methods
.method public a(LE1;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lj1;->x:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, LS1;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public b(LE1;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lj1;->w:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lj1;->x:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LS1;->a(Landroid/view/ViewGroup;Z)V

    .line 3
    :cond_0
    invoke-virtual {p1, p0}, LE1;->b(LD1;)LE1;

    return-void
.end method

.method public d(LE1;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lj1;->x:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-static {p1, v0}, LS1;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method
