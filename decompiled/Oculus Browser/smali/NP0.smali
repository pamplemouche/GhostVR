.class public LNP0;
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
    iput-object p1, p0, LNP0;->a:Lorg/chromium/content_public/browser/RenderFrameHost;

    return-void
.end method


# virtual methods
.method public a()LE61;
    .locals 2

    const-string v0, "WebAuthentication"

    .line 1
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, LNP0;->a:Lorg/chromium/content_public/browser/RenderFrameHost;

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v1, LOP0;

    iget-object v0, p0, LNP0;->a:Lorg/chromium/content_public/browser/RenderFrameHost;

    invoke-direct {v1, v0}, LOP0;-><init>(Lorg/chromium/content_public/browser/RenderFrameHost;)V

    :goto_0
    return-object v1
.end method
