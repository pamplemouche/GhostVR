.class public LpS0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LNS0;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LJS0;)V
    .locals 1

    .line 1
    invoke-static {}, LES0;->j()LuS0;

    move-result-object p1

    sget-object v0, LDS0;->x:LDS0;

    .line 2
    invoke-virtual {p1, v0}, LuS0;->a(LDS0;)LuS0;

    .line 3
    invoke-virtual {p1}, LFF;->e()LTF;

    move-result-object p1

    check-cast p1, LES0;

    .line 4
    invoke-virtual {p1}, LfF;->e()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LpS0;->a:Ljava/lang/String;

    return-void
.end method

.method public a(LLS0;)V
    .locals 1

    .line 5
    invoke-static {}, LES0;->j()LuS0;

    move-result-object p1

    sget-object v0, LDS0;->y:LDS0;

    .line 6
    invoke-virtual {p1, v0}, LuS0;->a(LDS0;)LuS0;

    .line 7
    invoke-virtual {p1}, LFF;->e()LTF;

    move-result-object p1

    check-cast p1, LES0;

    .line 8
    invoke-virtual {p1}, LfF;->e()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LpS0;->a:Ljava/lang/String;

    return-void
.end method
