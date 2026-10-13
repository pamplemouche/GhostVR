.class public LB2;
.super LG2;
.source "PG"


# instance fields
.field public final synthetic e:LD2;


# direct methods
.method public constructor <init>(LD2;)V
    .locals 0

    .line 1
    iput-object p1, p0, LB2;->e:LD2;

    .line 2
    invoke-direct {p0, p1}, LG2;-><init>(LD2;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1

    .line 9
    iget-object v0, p0, LB2;->e:LD2;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Lz2;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, LB2;->e:LD2;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, LD2;->D:Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne p3, v2, :cond_0

    .line 3
    :try_start_0
    invoke-static {v0, p2, v2, p4}, Lm2;->a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    iput-boolean v3, v0, LD2;->D:Z

    goto :goto_1

    .line 5
    :cond_0
    :try_start_1
    invoke-static {p3}, LD2;->b(I)V

    .line 6
    invoke-virtual {v0, p1}, LD2;->a(Lz2;)I

    move-result p1

    add-int/2addr p1, v1

    shl-int/lit8 p1, p1, 0x10

    const v1, 0xffff

    and-int/2addr p3, v1

    add-int/2addr p1, p3

    .line 7
    invoke-static {v0, p2, p1, p4}, Lm2;->a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 8
    iput-boolean v3, v0, LD2;->D:Z

    throw p1
.end method

.method public a()Z
    .locals 1

    .line 10
    iget-object v0, p0, LB2;->e:LD2;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, LB2;->e:LD2;

    check-cast v0, LQ8;

    .line 2
    invoke-virtual {v0}, LQ8;->F()LS8;

    move-result-object v0

    invoke-virtual {v0}, LS8;->c()V

    return-void
.end method
