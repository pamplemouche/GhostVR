.class public abstract LiC;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:LZB;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-static {v0}, LgC;->a(Ljava/lang/String;)LgC;

    move-result-object v0

    sput-object v0, LiC;->a:LZB;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, LhD;

    invoke-direct {v0, p0}, LhD;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v0, v0, LhD;->a:LgD;

    .line 3
    iget-object v0, v0, LgD;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    sget-object p1, LiC;->a:LZB;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    check-cast p1, LgC;

    const-string p0, "Unable to deliver listener intent: %s"

    invoke-virtual {p1, p0, v0}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
