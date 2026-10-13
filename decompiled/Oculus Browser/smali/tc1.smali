.class public Ltc1;
.super LO8;
.source "PG"


# instance fields
.field public final c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LO8;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {p1}, Ltc1;->a(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Ltc1;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, LO8;-><init>(Landroid/content/Context;I)V

    .line 4
    invoke-static {p1}, Ltc1;->a(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Ltc1;->c:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a()LP8;
    .locals 6

    .line 1
    invoke-super {p0}, LO8;->a()LP8;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lm9;->a()LS8;

    move-result-object v1

    iget-boolean v2, p0, Ltc1;->c:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    check-cast v1, Lk9;

    if-eqz v1, :cond_3

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    if-eqz v2, :cond_1

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_1

    const-string v1, "AppCompatDelegate"

    const-string v2, "setLocalNightMode() called with an unknown mode"

    .line 3
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4
    :cond_1
    iget v3, v1, Lk9;->e0:I

    if-eq v3, v2, :cond_2

    .line 5
    iput v2, v1, Lk9;->e0:I

    .line 6
    iget-boolean v2, v1, Lk9;->f0:Z

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v1}, Lk9;->a()Z

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    const/4 v0, 0x0

    .line 8
    throw v0
.end method
