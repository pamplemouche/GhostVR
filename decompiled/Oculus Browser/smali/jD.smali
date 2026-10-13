.class public abstract LjD;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:LDE;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, LDE;->a(II)LDE;

    move-result-object v0

    sput-object v0, LjD;->a:LDE;

    return-void
.end method

.method public static a()Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "ipcinv-implicit-scheduler"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(LkE;)Landroid/content/Intent;
    .locals 2

    .line 2
    invoke-virtual {p0}, LkE;->c()LXH;

    move-result-object p0

    invoke-static {p0}, LZG;->a(LZG;)[B

    move-result-object p0

    .line 3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "ipcinv-background-inv"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
