.class public Loa1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LUa1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LG61;Ljb1;)V
    .locals 2

    .line 1
    sget-object v0, Ldm;->d:Ldm;

    .line 2
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {v0, v1}, Ldm;->a(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    sget-object v0, LSa1;->s:LA61;

    new-instance v1, Lna1;

    invoke-direct {v1, p2}, Lna1;-><init>(Ljb1;)V

    invoke-virtual {v0, v1, p1}, LA61;->a(LE61;LG61;)V

    goto :goto_1

    .line 5
    :cond_1
    sget-object v0, LSa1;->s:LA61;

    new-instance v1, Lma1;

    invoke-direct {v1, p2}, Lma1;-><init>(Ljb1;)V

    invoke-virtual {v0, v1, p1}, LA61;->a(LE61;LG61;)V

    :goto_1
    return-void
.end method

.method public a(Ly71;)V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method
