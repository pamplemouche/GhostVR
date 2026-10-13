.class public LBC0;
.super LIC0;
.source "PG"


# instance fields
.field public final a:I

.field public final synthetic b:LNC0;


# direct methods
.method public constructor <init>(LNC0;I)V
    .locals 1

    .line 1
    iput-object p1, p0, LBC0;->b:LNC0;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LIC0;-><init>(LNC0;LAC0;)V

    const/16 p1, 0x27

    if-eq p2, p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x14

    .line 2
    :goto_0
    iput p1, p0, LBC0;->a:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget v0, p0, LBC0;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, LBC0;->b:LNC0;

    .line 3
    iget-object v1, v1, LNC0;->a:Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;

    if-eqz v1, :cond_3

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-static {v0, v1}, LJ/N;->MjeSXpnK(ILjava/lang/Object;)V

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOB0;

    .line 7
    iget-object v2, v1, LOB0;->x:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v3, p0, LBC0;->b:LNC0;

    .line 9
    iget-object v4, v1, LOB0;->y:Ljava/lang/String;

    .line 10
    invoke-virtual {v3, v2, v4}, LNC0;->a(Ljava/lang/String;Ljava/lang/String;)LyC0;

    move-result-object v2

    .line 11
    iget-object v2, v2, LyC0;->D:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 12
    throw v0
.end method
