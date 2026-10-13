.class public LZu0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lea1;


# instance fields
.field public final a:Lorg/chromium/content_public/browser/RenderFrameHost;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/RenderFrameHost;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LZu0;->a:Lorg/chromium/content_public/browser/RenderFrameHost;

    return-void
.end method


# virtual methods
.method public a()LE61;
    .locals 4

    .line 1
    iget-object v0, p0, LZu0;->a:Lorg/chromium/content_public/browser/RenderFrameHost;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/RenderFrameHost;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, LZu0;->a:Lorg/chromium/content_public/browser/RenderFrameHost;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/RenderFrameHost;->d()Lfa1;

    move-result-object v0

    new-instance v2, Ly71;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ly71;-><init>(I)V

    .line 3
    iget-object v0, v0, Lfa1;->w:LW91;

    check-cast v0, Lz61;

    invoke-virtual {v0}, Lz61;->close()V

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_0
    const-string v0, "WebPayments"

    .line 4
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    new-instance v0, LXu0;

    invoke-direct {v0, v1}, LXu0;-><init>(LWu0;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, LZu0;->a:Lorg/chromium/content_public/browser/RenderFrameHost;

    if-nez v0, :cond_2

    new-instance v0, LXu0;

    invoke-direct {v0, v1}, LXu0;-><init>(LWu0;)V

    goto :goto_1

    .line 7
    :cond_2
    new-instance v0, LYu0;

    invoke-direct {v0}, LYu0;-><init>()V

    .line 8
    new-instance v1, Lyv0;

    iget-object v2, p0, LZu0;->a:Lorg/chromium/content_public/browser/RenderFrameHost;

    invoke-direct {v1, v2, v0}, Lyv0;-><init>(Lorg/chromium/content_public/browser/RenderFrameHost;Lvv0;)V

    goto :goto_0

    :goto_1
    return-object v0
.end method
