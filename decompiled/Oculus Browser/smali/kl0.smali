.class public Lkl0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LN01;


# direct methods
.method public synthetic constructor <init>(Ljl0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lha1;Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p2, Lorg/chromium/content_public/browser/RenderFrameHost;

    .line 2
    sget-object v0, La91;->n:LA61;

    new-instance v1, LZu0;

    invoke-direct {v1, p2}, LZu0;-><init>(Lorg/chromium/content_public/browser/RenderFrameHost;)V

    .line 3
    iget-object v2, p1, Lha1;->w:Ljava/util/Map;

    invoke-virtual {v0}, LA61;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lga1;

    invoke-direct {v4, v0, v1}, Lga1;-><init>(LA61;Lea1;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, La41;->j:LA61;

    new-instance v1, LLh0;

    invoke-direct {v1, p2}, LLh0;-><init>(Lorg/chromium/content_public/browser/RenderFrameHost;)V

    .line 5
    iget-object v2, p1, Lha1;->w:Ljava/util/Map;

    invoke-virtual {v0}, LA61;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lga1;

    invoke-direct {v4, v0, v1}, Lga1;-><init>(LA61;Lea1;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, LLW;->b:LA61;

    new-instance v1, LNP0;

    invoke-direct {v1, p2}, LNP0;-><init>(Lorg/chromium/content_public/browser/RenderFrameHost;)V

    .line 7
    iget-object p1, p1, Lha1;->w:Ljava/util/Map;

    invoke-virtual {v0}, LA61;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lga1;

    invoke-direct {v2, v0, v1}, Lga1;-><init>(LA61;Lea1;)V

    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
