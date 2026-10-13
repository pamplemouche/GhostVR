.class public abstract LhC;
.super Landroid/app/IntentService;
.source "PG"


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, ""

    .line 1
    invoke-static {v0}, LgC;->a(Ljava/lang/String;)LgC;

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    return-void
.end method
