.class public abstract LvU;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:LtU;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, LwT;->c()LwT;

    move-result-object v0

    const-string v1, "enable-idle-tracing"

    invoke-virtual {v0, v1}, LwT;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, LuU;

    invoke-direct {v0, v1}, LuU;-><init>(LsU;)V

    goto :goto_0

    :cond_0
    new-instance v0, LtU;

    invoke-direct {v0, v1}, LtU;-><init>(LsU;)V

    :goto_0
    sput-object v0, LvU;->a:LtU;

    return-void
.end method
