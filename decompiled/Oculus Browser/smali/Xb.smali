.class public abstract LXb;
.super LYa;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, LWa;

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, LXb;

    .line 2
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, LWa;-><init>(Landroid/content/ComponentName;)V

    .line 3
    invoke-direct {p0, p1, v0}, LYa;-><init>(Landroid/content/Context;LWa;)V

    return-void
.end method


# virtual methods
.method public abstract a(Lqb;)V
.end method

.method public abstract b(Lqb;)V
.end method

.method public abstract c(Lqb;)V
.end method

.method public abstract d(Lqb;)V
.end method
