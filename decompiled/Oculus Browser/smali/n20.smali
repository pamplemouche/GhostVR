.class public Ln20;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Li20;


# instance fields
.field public final a:LQ01;

.field public final b:LIi;

.field public c:Lorg/chromium/content_public/browser/WebContents;

.field public d:[Lorg/chromium/content_public/browser/MessagePort;

.field public e:Landroid/net/Uri;


# direct methods
.method public constructor <init>(LIi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln20;->b:LIi;

    .line 3
    new-instance p1, Lk20;

    invoke-direct {p1, p0}, Lk20;-><init>(Ln20;)V

    iput-object p1, p0, Ln20;->a:LQ01;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 9
    iget-object v0, p0, Ln20;->d:[Lorg/chromium/content_public/browser/MessagePort;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 10
    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/chromium/content_public/browser/MessagePort;->close()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Ln20;->d:[Lorg/chromium/content_public/browser/MessagePort;

    .line 12
    iput-object v0, p0, Ln20;->c:Lorg/chromium/content_public/browser/WebContents;

    .line 13
    iget-object v1, p0, Ln20;->b:LIi;

    .line 14
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 15
    check-cast v1, LKi;

    .line 16
    invoke-virtual {v1}, LKi;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 17
    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 18
    iput-object v0, v1, LKi;->c:LF;

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Lh20;ZLjava/lang/Boolean;)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    .line 19
    :cond_0
    invoke-static {p1, p2}, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->a(Ljava/lang/String;Lh20;)Landroid/net/Uri;

    move-result-object p1

    .line 20
    iput-object p1, p0, Ln20;->e:Landroid/net/Uri;

    .line 21
    iget-object p1, p0, Ln20;->c:Lorg/chromium/content_public/browser/WebContents;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->m()Z

    move-result p1

    if-nez p1, :cond_1

    .line 22
    iget-object p1, p0, Ln20;->c:Lorg/chromium/content_public/browser/WebContents;

    invoke-virtual {p0, p1}, Ln20;->a(Lorg/chromium/content_public/browser/WebContents;)V

    :cond_1
    return-void
.end method

.method public final a(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->G()[Lorg/chromium/content_public/browser/MessagePort;

    move-result-object v0

    iput-object v0, p0, Ln20;->d:[Lorg/chromium/content_public/browser/MessagePort;

    const/4 v1, 0x0

    .line 2
    aget-object v0, v0, v1

    iget-object v2, p0, Ln20;->a:LQ01;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lorg/chromium/content_public/browser/MessagePort;->a(LQ01;Landroid/os/Handler;)V

    .line 3
    iget-object v0, p0, Ln20;->e:Landroid/net/Uri;

    .line 4
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v4, v2, [Lorg/chromium/content_public/browser/MessagePort;

    iget-object v5, p0, Ln20;->d:[Lorg/chromium/content_public/browser/MessagePort;

    aget-object v5, v5, v2

    aput-object v5, v4, v1

    const-string v1, ""

    .line 5
    invoke-interface {p1, v1, v0, v1, v4}, Lorg/chromium/content_public/browser/WebContents;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/chromium/content_public/browser/MessagePort;)V

    .line 6
    iget-object p1, p0, Ln20;->b:LIi;

    check-cast p1, LKi;

    .line 7
    iput-boolean v2, p1, LKi;->e:Z

    .line 8
    invoke-virtual {p1, v3}, LKi;->a(Landroid/os/Bundle;)Z

    return-void
.end method
