.class public LCC0;
.super LIC0;
.source "PG"


# instance fields
.field public final a:I

.field public final synthetic b:LNC0;


# direct methods
.method public constructor <init>(LNC0;I)V
    .locals 1

    .line 1
    iput-object p1, p0, LCC0;->b:LNC0;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LIC0;-><init>(LNC0;LAC0;)V

    .line 2
    iput p2, p0, LCC0;->a:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 1
    iget-object v0, p0, LCC0;->b:LNC0;

    iget v1, p0, LCC0;->a:I

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x9

    if-ge v3, v4, :cond_1

    .line 2
    invoke-static {v3}, LWB0;->a(I)I

    move-result v4

    if-ne v1, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_1
    :goto_1
    iget-object v4, v0, LNC0;->a:Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;

    if-eqz v4, :cond_a

    .line 4
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static {v4, v1, v5}, LJ/N;->MHUPNCfq(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 7
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 8
    invoke-static {v4, v1}, LJ/N;->M$7ik4Dx(Ljava/lang/Object;I)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v1, v5

    goto :goto_3

    .line 9
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LWB0;

    .line 11
    iget-object v6, v5, LWB0;->z:Ljava/lang/String;

    const-string v7, "policy"

    .line 12
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 13
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 14
    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LWB0;

    .line 15
    iget-object v5, v4, LWB0;->x:Ljava/lang/String;

    const-string v6, "*"

    .line 16
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_4

    .line 17
    :cond_5
    iget-object v5, v4, LWB0;->x:Ljava/lang/String;

    if-nez v5, :cond_6

    goto :goto_4

    .line 18
    :cond_6
    invoke-virtual {v0, v5, v2}, LNC0;->a(Ljava/lang/String;Ljava/lang/String;)LyC0;

    move-result-object v5

    .line 19
    iget-object v5, v5, LyC0;->y:[LWB0;

    aput-object v4, v5, v3

    goto :goto_4

    :cond_7
    return-void

    .line 20
    :cond_8
    throw v2

    .line 21
    :cond_9
    throw v2

    .line 22
    :cond_a
    throw v2

    .line 23
    :cond_b
    throw v2
.end method
