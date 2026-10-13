.class public final synthetic LwN0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LBN0;

.field public final b:LnU;


# direct methods
.method public constructor <init>(LBN0;LnU;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LwN0;->a:LBN0;

    iput-object p2, p0, LwN0;->b:LnU;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, LwN0;->a:LBN0;

    iget-object v1, p0, LwN0;->b:LnU;

    check-cast p1, Ljava/util/List;

    .line 1
    iget-object v0, v0, LBN0;->a:Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;

    new-instance v2, LuN0;

    invoke-direct {v2, p1, v1}, LuN0;-><init>(Ljava/util/List;LnU;)V

    .line 2
    iget-wide v3, v0, Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;->b:J

    .line 3
    invoke-static {v3, v4, v0, v2}, LJ/N;->Mot8dCyk(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
