.class public final synthetic LWJ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LkK0;


# direct methods
.method public constructor <init>(LkK0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LWJ0;->w:LkK0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LWJ0;->w:LkK0;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v2, "MobileToolbarShowMenu"

    .line 1
    invoke-static {v2}, LhV;->a(Ljava/lang/String;)V

    .line 2
    iget-boolean v2, v0, LkK0;->m0:Z

    if-eqz v2, :cond_0

    const-string v2, "MobileBottomToolbarShowMenu"

    .line 3
    invoke-static {v2}, LhV;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "MobileTopToolbarShowMenu"

    .line 4
    invoke-static {v2}, LhV;->a(Ljava/lang/String;)V

    .line 5
    :goto_0
    iget-object v0, v0, LkK0;->A:LfL0;

    .line 6
    iget-object v0, v0, LfL0;->a:LQK0;

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->e()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    invoke-static {v0}, LJa0;->a(Lorg/chromium/chrome/browser/profiles/Profile;)LoT0;

    move-result-object v0

    const-string v1, "overflow_opened_data_saver_shown"

    .line 9
    invoke-interface {v0, v1}, LoT0;->c(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 10
    :cond_2
    throw v1

    .line 11
    :cond_3
    throw v1
.end method
