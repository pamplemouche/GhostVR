.class public LpE0;
.super Ls2;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public D0:LoE0;

.field public E0:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LpE0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls2;-><init>()V

    return-void
.end method

.method public static a(LoE0;LH2;Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 7

    const v0, 0x7f130587

    .line 1
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1304ee

    .line 2
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1301d4

    .line 3
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    const p3, 0x7f130588

    .line 4
    invoke-virtual {p2, p3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 5
    new-instance p3, LpE0;

    invoke-direct {p3}, LpE0;-><init>()V

    .line 6
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v6, "title"

    .line 7
    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "description"

    .line 8
    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "positiveButton"

    .line 9
    invoke-virtual {v4, p2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "negativeButton"

    .line 10
    invoke-virtual {v4, p2, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p3, v4}, Lz2;->g(Landroid/os/Bundle;)V

    .line 12
    iput-object p0, p3, LpE0;->D0:LoE0;

    .line 13
    check-cast p1, LY2;

    if-eqz p1, :cond_0

    .line 14
    new-instance p0, Lq2;

    invoke-direct {p0, p1}, Lq2;-><init>(LY2;)V

    const-string p1, "sync_managed_data_tag"

    .line 15
    invoke-virtual {p0, v5, p3, p1, v3}, Lq2;->a(ILz2;Ljava/lang/String;I)V

    .line 16
    invoke-virtual {p0}, Ld3;->b()I

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 17
    throw p0
.end method


# virtual methods
.method public h(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 1
    iget-object p1, p0, Lz2;->C:Landroid/os/Bundle;

    const-string v0, "title"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lz2;->C:Landroid/os/Bundle;

    const-string v1, "description"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lz2;->C:Landroid/os/Bundle;

    const-string v2, "positiveButton"

    .line 6
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lz2;->C:Landroid/os/Bundle;

    const-string v3, "negativeButton"

    .line 8
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    new-instance v3, LO8;

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v4

    const v5, 0x7f140245

    invoke-direct {v3, v4, v5}, LO8;-><init>(Landroid/content/Context;I)V

    .line 10
    iget-object v4, v3, LO8;->a:LK8;

    iput-object p1, v4, LK8;->f:Ljava/lang/CharSequence;

    .line 11
    iput-object v0, v4, LK8;->h:Ljava/lang/CharSequence;

    .line 12
    invoke-virtual {v3, v1, p0}, LO8;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)LO8;

    .line 13
    invoke-virtual {v3, v2, p0}, LO8;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)LO8;

    .line 14
    invoke-virtual {v3}, LO8;->a()LP8;

    move-result-object p1

    return-object p1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, LpE0;->D0:LoE0;

    check-cast p1, LuE0;

    .line 2
    invoke-virtual {p1}, LuE0;->c()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, LpE0;->D0:LoE0;

    check-cast p1, LuE0;

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, LuE0;->b(Z)V

    :goto_0
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, LpE0;->E0:Z

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Ls2;->A0:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Ls2;->g(Z)V

    .line 3
    :cond_0
    iget-boolean p1, p0, LpE0;->E0:Z

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, LpE0;->D0:LoE0;

    check-cast p1, LuE0;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, LuE0;->b(Z)V

    :cond_1
    return-void
.end method
