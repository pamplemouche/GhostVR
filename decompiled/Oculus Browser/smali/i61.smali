.class public Li61;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LG71;


# instance fields
.field public final synthetic a:Lj61;


# direct methods
.method public synthetic constructor <init>(Lj61;Lh61;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li61;->a:Lj61;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Li61;->a:Lj61;

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    .line 2
    :cond_0
    :try_start_0
    iget-object p1, v0, Lj61;->x:Lx71;

    iget-object v1, v0, Lj61;->z:LJ61;

    invoke-static {p1, v1}, Lj61;->a(Lx71;LJ61;)Lorg/chromium/mojo/system/ResultAnd;

    move-result-object p1
    :try_end_0
    .catch Ly71; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iget-object v1, p1, Lorg/chromium/mojo/system/ResultAnd;->b:Ljava/lang/Object;

    .line 4
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget v1, p1, Lorg/chromium/mojo/system/ResultAnd;->a:I

    const/16 v2, 0x11

    if-eq v1, v2, :cond_2

    .line 6
    new-instance v1, Ly71;

    .line 7
    iget p1, p1, Lorg/chromium/mojo/system/ResultAnd;->a:I

    .line 8
    invoke-direct {v1, p1}, Ly71;-><init>(I)V

    invoke-virtual {v0, v1}, Lj61;->a(Ly71;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {v0, p1}, Lj61;->a(Ly71;)V

    goto :goto_0

    .line 10
    :cond_1
    new-instance v1, Ly71;

    invoke-direct {v1, p1}, Ly71;-><init>(I)V

    invoke-virtual {v0, v1}, Lj61;->a(Ly71;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 p1, 0x0

    .line 11
    throw p1
.end method
