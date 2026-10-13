.class public LwE0;
.super Ls2;
.source "PG"


# instance fields
.field public D0:LxE0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls2;-><init>()V

    return-void
.end method

.method public static final synthetic a(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method


# virtual methods
.method public h(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, v0}, Ls2;->g(Z)V

    .line 2
    :cond_0
    new-instance p1, LO8;

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v1

    const v2, 0x7f140245

    invoke-direct {p1, v1, v2}, LO8;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0e019d

    .line 3
    iget-object v2, p1, LO8;->a:LK8;

    const/4 v3, 0x0

    iput-object v3, v2, LK8;->u:Landroid/view/View;

    .line 4
    iput v1, v2, LK8;->t:I

    .line 5
    iput-boolean v0, v2, LK8;->v:Z

    const v0, 0x7f1301d4

    .line 6
    sget-object v1, LvE0;->w:Landroid/content/DialogInterface$OnClickListener;

    .line 7
    invoke-virtual {p1, v0, v1}, LO8;->a(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    .line 8
    invoke-virtual {p1}, LO8;->a()LP8;

    move-result-object p1

    return-object p1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, LwE0;->D0:LxE0;

    check-cast p1, LrE0;

    .line 2
    iget-object p1, p1, LrE0;->a:LuE0;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, LuE0;->b(Z)V

    return-void
.end method
