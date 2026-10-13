.class public Lu2;
.super LE2;
.source "PG"


# instance fields
.field public final synthetic a:Lz2;


# direct methods
.method public constructor <init>(Lz2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu2;->a:Lz2;

    invoke-direct {p0}, LE2;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lu2;->a:Lz2;

    iget-object v0, v0, Lz2;->e0:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment does not have a view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lz2;
    .locals 1

    .line 5
    iget-object v0, p0, Lu2;->a:Lz2;

    iget-object v0, v0, Lz2;->O:LG2;

    if-eqz v0, :cond_0

    .line 6
    invoke-static {p1, p2, p3}, Lz2;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lz2;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public a()Z
    .locals 1

    .line 4
    iget-object v0, p0, Lu2;->a:Lz2;

    iget-object v0, v0, Lz2;->e0:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
