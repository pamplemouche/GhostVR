.class public Lw9;
.super Ls2;
.source "PG"


# static fields
.field public static final F0:Z


# instance fields
.field public D0:Landroid/app/Dialog;

.field public E0:Lbb;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "UseSupportDynamicGroup"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lw9;->F0:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls2;-><init>()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ls2;->h(Z)V

    return-void
.end method


# virtual methods
.method public final O()V
    .locals 2

    .line 1
    iget-object v0, p0, Lw9;->E0:Lbb;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lz2;->C:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "selector"

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lbb;->a(Landroid/os/Bundle;)Lbb;

    move-result-object v0

    iput-object v0, p0, Lw9;->E0:Lbb;

    .line 4
    :cond_0
    iget-object v0, p0, Lw9;->E0:Lbb;

    if-nez v0, :cond_1

    .line 5
    sget-object v0, Lbb;->c:Lbb;

    iput-object v0, p0, Lw9;->E0:Lbb;

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/os/Bundle;)Lv9;
    .locals 1

    .line 14
    new-instance p2, Lv9;

    const/4 v0, 0x0

    .line 15
    invoke-direct {p2, p1, v0}, Lv9;-><init>(Landroid/content/Context;I)V

    return-object p2
.end method

.method public a(Lbb;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Lw9;->O()V

    .line 2
    iget-object v0, p0, Lw9;->E0:Lbb;

    invoke-virtual {v0, p1}, Lbb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iput-object p1, p0, Lw9;->E0:Lbb;

    .line 4
    iget-object v0, p0, Lz2;->C:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    :cond_0
    iget-object v1, p1, Lbb;->a:Landroid/os/Bundle;

    const-string v2, "selector"

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 8
    invoke-virtual {p0, v0}, Lz2;->g(Landroid/os/Bundle;)V

    .line 9
    iget-object v0, p0, Lw9;->D0:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 10
    sget-boolean v1, Lw9;->F0:Z

    if-eqz v1, :cond_1

    .line 11
    check-cast v0, Lba;

    invoke-virtual {v0, p1}, Lba;->a(Lbb;)V

    goto :goto_0

    .line 12
    :cond_1
    check-cast v0, Lv9;

    invoke-virtual {v0, p1}, Lv9;->a(Lbb;)V

    :cond_2
    :goto_0
    return-void

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "selector must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 1
    sget-boolean v0, Lw9;->F0:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lz2;->p()Landroid/content/Context;

    move-result-object p1

    .line 3
    new-instance v0, Lba;

    invoke-direct {v0, p1}, Lba;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object v0, p0, Lw9;->D0:Landroid/app/Dialog;

    .line 5
    invoke-virtual {p0}, Lw9;->O()V

    .line 6
    iget-object p1, p0, Lw9;->E0:Lbb;

    .line 7
    invoke-virtual {v0, p1}, Lba;->a(Lbb;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lz2;->p()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lw9;->a(Landroid/content/Context;Landroid/os/Bundle;)Lv9;

    move-result-object p1

    iput-object p1, p0, Lw9;->D0:Landroid/app/Dialog;

    .line 9
    invoke-virtual {p0}, Lw9;->O()V

    .line 10
    iget-object v0, p0, Lw9;->E0:Lbb;

    .line 11
    invoke-virtual {p1, v0}, Lv9;->a(Lbb;)V

    .line 12
    :goto_0
    iget-object p1, p0, Lw9;->D0:Landroid/app/Dialog;

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lz2;->c0:Z

    .line 2
    iget-object p1, p0, Lw9;->D0:Landroid/app/Dialog;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    sget-boolean v0, Lw9;->F0:Z

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lba;

    .line 5
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    .line 6
    :cond_1
    check-cast p1, Lv9;

    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lda;->a(Landroid/content/Context;)I

    move-result p1

    const/4 v1, -0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/Window;->setLayout(II)V

    :goto_0
    return-void
.end method
