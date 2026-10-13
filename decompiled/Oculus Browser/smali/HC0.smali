.class public LHC0;
.super LIC0;
.source "PG"


# instance fields
.field public final a:LMC0;

.field public final synthetic b:LNC0;


# direct methods
.method public synthetic constructor <init>(LNC0;LMC0;LAC0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LHC0;->b:LNC0;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3}, LIC0;-><init>(LNC0;LAC0;)V

    .line 2
    iput-object p2, p0, LHC0;->a:LMC0;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, LHC0;->a:LMC0;

    iget-object v1, p0, LHC0;->b:LNC0;

    .line 2
    iget-object v1, v1, LNC0;->b:Ljava/util/Map;

    .line 3
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, LMC0;->a(Ljava/util/Collection;)V

    return-void
.end method
