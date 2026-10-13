.class public LbJ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LcJ0;


# direct methods
.method public synthetic constructor <init>(LaJ0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;LcI0;I)LpI0;
    .locals 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, LdJ0;->a()LdJ0;

    move-result-object v0

    .line 4
    iget-object v0, v0, LdJ0;->y:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    new-instance v4, LgJ0;

    invoke-direct {v4, p3, v0}, LgJ0;-><init>(IZ)V

    .line 6
    new-instance p3, LwI0;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, LwI0;-><init>(Landroid/content/Context;LcI0;LGI0;ZZZ)V

    return-object p3
.end method
