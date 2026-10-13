.class public LlD;
.super LsC;
.source "PG"


# instance fields
.field public g:LaC;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;LbD;Ljava/lang/String;LkD;)V
    .locals 7

    .line 1
    invoke-static {p3}, LgC;->a(Ljava/lang/String;)LgC;

    move-result-object v1

    new-instance v2, LcD;

    invoke-direct {v2, p1, p2}, LcD;-><init>(Landroid/content/Context;LbD;)V

    new-instance v3, LmD;

    const/4 p2, 0x0

    invoke-direct {v3, p2}, LmD;-><init>(LkD;)V

    new-instance v4, LtD;

    invoke-direct {v4, p1}, LtD;-><init>(Landroid/content/Context;)V

    new-instance v5, LfD;

    invoke-direct {v5, p1}, LfD;-><init>(Landroid/content/Context;)V

    const-string p1, "Android-"

    .line 2
    invoke-static {p1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    .line 3
    invoke-direct/range {v0 .. v6}, LsC;-><init>(LZB;LdC;LdC;LbC;LeC;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()LaC;
    .locals 2

    .line 1
    iget-object v0, p0, LlD;->g:LaC;

    const-string v1, "network listener not yet set"

    invoke-static {v0, v1}, LWE;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, LaC;

    return-object v0
.end method
