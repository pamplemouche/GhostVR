.class public Lorg/chromium/content/browser/InterfaceRegistrarImpl;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Z


# direct methods
.method public static a()V
    .locals 2

    .line 1
    sget-boolean v0, Lorg/chromium/content/browser/InterfaceRegistrarImpl;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lorg/chromium/content/browser/InterfaceRegistrarImpl;->a:Z

    .line 3
    new-instance v0, LtW0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LtW0;-><init>(LsW0;)V

    .line 4
    sget-object v1, LM01;->b:LM01;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, LM01;

    invoke-direct {v1}, LM01;-><init>()V

    sput-object v1, LM01;->b:LM01;

    .line 6
    :cond_1
    sget-object v1, LM01;->b:LM01;

    .line 7
    iget-object v1, v1, LM01;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static createInterfaceRegistryForContext(I)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/content/browser/InterfaceRegistrarImpl;->a()V

    .line 2
    sget-object v0, LK71;->a:Lj71;

    .line 3
    invoke-interface {v0, p0}, Lj71;->a(I)LF71;

    move-result-object p0

    invoke-interface {p0}, LF71;->B()Lx71;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lha1;->a(Lx71;)Lha1;

    move-result-object p0

    .line 5
    sget-object v0, LM01;->b:LM01;

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 7
    invoke-virtual {v0, p0, v1}, LM01;->a(Lha1;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static createInterfaceRegistryForRenderFrameHost(ILorg/chromium/content_public/browser/RenderFrameHost;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/content/browser/InterfaceRegistrarImpl;->a()V

    .line 2
    sget-object v0, LK71;->a:Lj71;

    .line 3
    invoke-interface {v0, p0}, Lj71;->a(I)LF71;

    move-result-object p0

    invoke-interface {p0}, LF71;->B()Lx71;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lha1;->a(Lx71;)Lha1;

    move-result-object p0

    .line 5
    sget-object v0, LM01;->d:LM01;

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p0, p1}, LM01;->a(Lha1;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static createInterfaceRegistryForWebContents(ILorg/chromium/content_public/browser/WebContents;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/content/browser/InterfaceRegistrarImpl;->a()V

    .line 2
    sget-object v0, LK71;->a:Lj71;

    .line 3
    invoke-interface {v0, p0}, Lj71;->a(I)LF71;

    move-result-object p0

    invoke-interface {p0}, LF71;->B()Lx71;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lha1;->a(Lx71;)Lha1;

    move-result-object p0

    .line 5
    sget-object v0, LM01;->c:LM01;

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p0, p1}, LM01;->a(Lha1;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
