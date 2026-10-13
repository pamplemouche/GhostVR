.class public abstract LNA;
.super LgB;
.source "PG"


# instance fields
.field public final a:LuB;

.field public final b:LHB;

.field public final synthetic c:LLA;


# direct methods
.method public constructor <init>(LLA;LuB;LHB;)V
    .locals 0

    iput-object p1, p0, LNA;->c:LLA;

    invoke-direct {p0}, LgB;-><init>()V

    iput-object p2, p0, LNA;->a:LuB;

    iput-object p3, p0, LNA;->b:LHB;

    return-void
.end method


# virtual methods
.method public c(Landroid/os/Bundle;)V
    .locals 3

    iget-object p1, p0, LNA;->c:LLA;

    iget-object p1, p1, LLA;->a:LhB;

    invoke-virtual {p1}, LhB;->a()V

    iget-object p1, p0, LNA;->a:LuB;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x4

    const-string v2, "onCompleteUpdate"

    .line 1
    invoke-virtual {p1, v1, v2, v0}, LuB;->a(ILjava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
