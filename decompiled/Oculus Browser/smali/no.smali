.class public final Lno;
.super Leo;
.source "PG"


# instance fields
.field public final b:Ldn;


# direct methods
.method public constructor <init>(Ldn;Lcv;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p2}, Leo;-><init>(ILcv;)V

    iput-object p1, p0, Lno;->b:Ldn;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lln;Z)V
    .locals 0

    return-void
.end method

.method public final b(LVm;)V
    .locals 1

    .line 1
    iget-object p1, p1, LVm;->g:Ljava/util/Map;

    .line 2
    iget-object v0, p0, Lno;->b:Ldn;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbo;

    if-nez p1, :cond_0

    iget-object p1, p0, Leo;->a:Lcv;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3
    iget-object p1, p1, Lcv;->a:Lsv;

    invoke-virtual {p1, v0}, Lsv;->b(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method
