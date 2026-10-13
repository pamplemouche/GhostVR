.class public final LbX0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lb11;
.implements LVc1;
.implements LxU;


# instance fields
.field public A:Z

.field public final w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

.field public x:Ljava/lang/Boolean;

.field public y:Z

.field public z:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    check-cast p1, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    iput-object p1, p0, LbX0;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    return-void
.end method

.method public static a(Lorg/chromium/content_public/browser/WebContents;)LbX0;
    .locals 2

    .line 1
    check-cast p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    const-class v0, LbX0;

    .line 2
    sget-object v1, LaX0;->a:Lt01;

    .line 3
    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->a(Ljava/lang/Class;Lt01;)LxU;

    move-result-object p0

    check-cast p0, LbX0;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 4
    iget-object v0, p0, LbX0;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {v0}, LgX0;->a(Lorg/chromium/content_public/browser/WebContents;)LgX0;

    move-result-object v0

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, LgX0;->z:Z

    .line 6
    invoke-virtual {v0}, LgX0;->a()V

    .line 7
    iget-object v0, v0, LgX0;->w:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LcX0;

    invoke-interface {v1}, LcX0;->onAttachedToWindow()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 8
    iget-object v0, p0, LbX0;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {v0}, LgX0;->a(Lorg/chromium/content_public/browser/WebContents;)LgX0;

    move-result-object v0

    .line 9
    iget-object v0, v0, LgX0;->w:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LcX0;

    .line 10
    invoke-interface {v1, p1}, LcX0;->onWindowFocusChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, LbX0;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {v0}, LgX0;->a(Lorg/chromium/content_public/browser/WebContents;)LgX0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, LgX0;->b()V

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, LgX0;->z:Z

    .line 4
    iget-object v0, v0, LgX0;->w:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LcX0;

    invoke-interface {v1}, LcX0;->onDetachedFromWindow()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 7

    .line 1
    iget-object v0, p0, LbX0;->x:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, LbX0;->y:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, LbX0;->z:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, LbX0;->z:Ljava/lang/Boolean;

    .line 5
    iget-object v0, p0, LbX0;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    if-nez v0, :cond_3

    return-void

    .line 6
    :cond_3
    invoke-static {v0}, LgX0;->a(Lorg/chromium/content_public/browser/WebContents;)LgX0;

    move-result-object v0

    iget-object v1, p0, LbX0;->z:Ljava/lang/Boolean;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-boolean v2, p0, LbX0;->A:Z

    .line 8
    iget-object v0, v0, LgX0;->w:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LcX0;

    .line 9
    invoke-interface {v3, v1, v2}, LcX0;->a(ZZ)V

    goto :goto_1

    .line 10
    :cond_4
    iget-object v0, p0, LbX0;->w:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    iget-object v1, p0, LbX0;->z:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 11
    iget-wide v2, v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_5

    goto :goto_2

    .line 12
    :cond_5
    invoke-static {v2, v3, v0, v1}, LJ/N;->M9QxNoTJ(JLjava/lang/Object;Z)V

    :goto_2
    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method
