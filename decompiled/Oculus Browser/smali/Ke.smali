.class public LKe;
.super Lyf;
.source "PG"


# instance fields
.field public final synthetic F:LPe;

.field public final synthetic G:Landroid/support/v7/widget/AppCompatSpinner;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/AppCompatSpinner;Landroid/view/View;LPe;)V
    .locals 0

    .line 1
    iput-object p1, p0, LKe;->G:Landroid/support/v7/widget/AppCompatSpinner;

    iput-object p3, p0, LKe;->F:LPe;

    invoke-direct {p0, p2}, Lyf;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b()LJd;
    .locals 1

    .line 1
    iget-object v0, p0, LKe;->F:LPe;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, LKe;->G:Landroid/support/v7/widget/AppCompatSpinner;

    iget-object v0, v0, Landroid/support/v7/widget/AppCompatSpinner;->B:LPe;

    invoke-virtual {v0}, Lmg;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, LKe;->G:Landroid/support/v7/widget/AppCompatSpinner;

    iget-object v0, v0, Landroid/support/v7/widget/AppCompatSpinner;->B:LPe;

    invoke-virtual {v0}, LPe;->a()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
