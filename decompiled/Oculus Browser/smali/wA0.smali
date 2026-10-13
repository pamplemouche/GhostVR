.class public LwA0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LsA0;


# instance fields
.field public w:Lorg/chromium/chrome/browser/preferences/password/PasswordUIView;

.field public final x:LWT;


# direct methods
.method public synthetic constructor <init>(LuA0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, LWT;

    invoke-direct {p1}, LWT;-><init>()V

    iput-object p1, p0, LwA0;->x:LWT;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 7
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 8
    iget-object v0, p0, LwA0;->x:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LsA0;

    .line 9
    invoke-interface {v1, p1}, LsA0;->a(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(LsA0;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 3
    iget-object v0, p0, LwA0;->w:Lorg/chromium/chrome/browser/preferences/password/PasswordUIView;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 5
    new-instance v0, Lorg/chromium/chrome/browser/preferences/password/PasswordUIView;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/preferences/password/PasswordUIView;-><init>(LsA0;)V

    iput-object v0, p0, LwA0;->w:Lorg/chromium/chrome/browser/preferences/password/PasswordUIView;

    .line 6
    :cond_0
    iget-object v0, p0, LwA0;->x:LWT;

    invoke-virtual {v0, p1}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 9
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 10
    iget-object v0, p0, LwA0;->x:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LsA0;

    .line 11
    invoke-interface {v1, p1}, LsA0;->b(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(LsA0;)V
    .locals 5

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-object v0, p0, LwA0;->x:LWT;

    invoke-virtual {v0, p1}, LWT;->b(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, LwA0;->x:LWT;

    invoke-virtual {p1}, LWT;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, LwA0;->w:Lorg/chromium/chrome/browser/preferences/password/PasswordUIView;

    .line 5
    iget-wide v0, p1, Lorg/chromium/chrome/browser/preferences/password/PasswordUIView;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 6
    invoke-static {v0, v1, p1}, LJ/N;->MOi0LYp1(JLjava/lang/Object;)V

    .line 7
    iput-wide v2, p1, Lorg/chromium/chrome/browser/preferences/password/PasswordUIView;->a:J

    :cond_0
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, LwA0;->w:Lorg/chromium/chrome/browser/preferences/password/PasswordUIView;

    :cond_1
    return-void
.end method
