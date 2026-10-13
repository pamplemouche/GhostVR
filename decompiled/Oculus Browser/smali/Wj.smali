.class public abstract LWj;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:LVj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LVj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LVj;-><init>(LWj;LYk;)V

    iput-object v0, p0, LWj;->c:LVj;

    .line 3
    invoke-static {p1}, Lxp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LWj;->a:Landroid/content/Context;

    .line 4
    invoke-static {p2}, Lxp;->b(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, LWj;->b:Ljava/lang/String;

    return-void
.end method
