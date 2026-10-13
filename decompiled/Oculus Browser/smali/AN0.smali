.class public final synthetic LAN0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LBN0;

.field public final b:Ljava/util/List;

.field public final c:LnU;


# direct methods
.method public constructor <init>(LBN0;Ljava/util/List;LnU;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LAN0;->a:LBN0;

    iput-object p2, p0, LAN0;->b:Ljava/util/List;

    iput-object p3, p0, LAN0;->c:LnU;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, LAN0;->a:LBN0;

    iget-object v1, p0, LAN0;->b:Ljava/util/List;

    iget-object v2, p0, LAN0;->c:LnU;

    check-cast p1, Ljava/util/List;

    .line 1
    iget-object v0, v0, LBN0;->a:Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;

    .line 2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    new-instance v4, LsN0;

    invoke-direct {v4, v1, p1, v2}, LsN0;-><init>(Ljava/util/List;Ljava/util/List;LnU;)V

    .line 3
    iget-wide v1, v0, Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;->b:J

    .line 4
    invoke-static {v1, v2, v0, v3, v4}, LJ/N;->M67g7Hwt(JLjava/lang/Object;[Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
