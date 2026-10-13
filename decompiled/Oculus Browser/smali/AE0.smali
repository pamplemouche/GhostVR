.class public LAE0;
.super Ls2;
.source "PG"


# instance fields
.field public D0:LBE0;


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
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Ls2;->g(Z)V

    .line 2
    :cond_0
    new-instance p1, LO8;

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    const v1, 0x7f140245

    invoke-direct {p1, v0, v1}, LO8;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f13058b

    .line 3
    invoke-virtual {p1, v0}, LO8;->b(I)LO8;

    const v0, 0x7f13058a

    .line 4
    invoke-virtual {p1, v0}, LO8;->a(I)LO8;

    const v0, 0x7f1301d4

    sget-object v1, LyE0;->w:Landroid/content/DialogInterface$OnClickListener;

    .line 5
    invoke-virtual {p1, v0, v1}, LO8;->a(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    const v0, 0x7f130623

    new-instance v1, LzE0;

    invoke-direct {v1, p0}, LzE0;-><init>(LAE0;)V

    .line 6
    invoke-virtual {p1, v0, v1}, LO8;->b(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    .line 7
    invoke-virtual {p1}, LO8;->a()LP8;

    move-result-object p1

    return-object p1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, LAE0;->D0:LBE0;

    check-cast p1, LtE0;

    .line 2
    iget-object p1, p1, LtE0;->a:LuE0;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, LuE0;->b(Z)V

    return-void
.end method
