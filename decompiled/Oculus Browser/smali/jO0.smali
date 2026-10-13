.class public LjO0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static i:LjO0;


# instance fields
.field public a:LBN0;

.field public b:LFN0;

.field public c:LON0;

.field public d:LVN0;

.field public e:Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;

.field public f:Ljava/util/List;

.field public g:LpN0;

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/profiles/Profile;->b()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    .line 3
    new-instance v1, Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;

    invoke-direct {v1, v0, p0}, Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;LjO0;)V

    iput-object v1, p0, LjO0;->e:Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;

    .line 4
    new-instance v2, LBN0;

    invoke-direct {v2, v1}, LBN0;-><init>(Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;)V

    iput-object v2, p0, LjO0;->a:LBN0;

    .line 5
    new-instance v1, LFN0;

    invoke-direct {v1, v0}, LFN0;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;)V

    iput-object v1, p0, LjO0;->b:LFN0;

    .line 6
    new-instance v0, LON0;

    iget-object v2, p0, LjO0;->e:Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;

    invoke-direct {v0, v2, v1}, LON0;-><init>(Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;LFN0;)V

    iput-object v0, p0, LjO0;->c:LON0;

    .line 7
    new-instance v0, LVN0;

    iget-object v1, p0, LjO0;->e:Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;

    invoke-direct {v0, v1}, LVN0;-><init>(Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;)V

    iput-object v0, p0, LjO0;->d:LVN0;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LjO0;->f:Ljava/util/List;

    .line 9
    invoke-static {}, Lorg/chromium/chrome/browser/AppHooks;->get()Lorg/chromium/chrome/browser/AppHooks;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 10
    new-instance v0, LpN0;

    invoke-direct {v0}, LpN0;-><init>()V

    .line 11
    iput-object v0, p0, LjO0;->g:LpN0;

    .line 12
    iget-object v0, p0, LjO0;->c:LON0;

    .line 13
    iget-object v0, v0, LON0;->c:LnU;

    sget-object v2, LKN0;->a:LlU;

    invoke-virtual {v0, v2}, LnU;->a(LlU;)LnU;

    move-result-object v0

    .line 14
    new-instance v2, LaO0;

    invoke-direct {v2, p0}, LaO0;-><init>(LjO0;)V

    invoke-virtual {v0, v2}, LnU;->b(Lorg/chromium/base/Callback;)V

    .line 15
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 16
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0xb

    .line 17
    invoke-static {v0, v1}, LJ/N;->MVEXC539(Ljava/lang/Object;I)Z

    move-result v0

    const-string v1, "UsageStats"

    .line 18
    invoke-static {v1}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 19
    invoke-virtual {p0}, LjO0;->a()V

    .line 20
    invoke-virtual {p0, v2}, LjO0;->a(Z)V

    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 21
    :cond_1
    iput-boolean v2, p0, LjO0;->h:Z

    return-void

    .line 22
    :cond_2
    throw v1

    .line 23
    :cond_3
    throw v1
.end method

.method public static b()LjO0;
    .locals 1

    .line 1
    sget-object v0, LjO0;->i:LjO0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, LjO0;

    invoke-direct {v0}, LjO0;-><init>()V

    sput-object v0, LjO0;->i:LjO0;

    .line 3
    :cond_0
    sget-object v0, LjO0;->i:LjO0;

    return-object v0
.end method

.method public static c()Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/BuildInfo;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UsageStats"

    .line 2
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 17
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    const/4 v0, 0x7

    .line 18
    invoke-static {v0}, LZN0;->a(I)V

    .line 19
    iget-object v0, p0, LjO0;->g:LpN0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 20
    invoke-static {v1}, LnU;->b(Ljava/lang/Object;)LnU;

    .line 21
    iget-object v0, p0, LjO0;->a:LBN0;

    if-eqz v0, :cond_0

    .line 22
    new-instance v1, LnU;

    invoke-direct {v1}, LnU;-><init>()V

    .line 23
    iget-object v2, v0, LBN0;->b:LnU;

    new-instance v3, LwN0;

    invoke-direct {v3, v0, v1}, LwN0;-><init>(LBN0;LnU;)V

    sget-object v0, LxN0;->a:Lorg/chromium/base/Callback;

    .line 24
    invoke-virtual {v2, v3}, LnU;->c(Lorg/chromium/base/Callback;)V

    .line 25
    invoke-virtual {v2, v0}, LnU;->a(Lorg/chromium/base/Callback;)V

    .line 26
    new-instance v0, LdO0;

    invoke-direct {v0, p0}, LdO0;-><init>(LjO0;)V

    .line 27
    invoke-virtual {v1, v0}, LnU;->a(Lorg/chromium/base/Callback;)V

    return-void

    .line 28
    :cond_0
    throw v1

    .line 29
    :cond_1
    throw v1
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 2

    .line 30
    iget-object p2, p0, LjO0;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 31
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGN0;

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 p1, 0x0

    .line 33
    throw p1

    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/16 v2, 0xb

    .line 3
    invoke-static {v0, v2, p1}, LJ/N;->MtxNNFos(Ljava/lang/Object;IZ)V

    .line 4
    iget-boolean v0, p0, LjO0;->h:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 5
    :cond_0
    iput-boolean p1, p0, LjO0;->h:Z

    .line 6
    iget-object v0, p0, LjO0;->g:LpN0;

    if-eqz v0, :cond_2

    .line 7
    invoke-static {v1}, LnU;->b(Ljava/lang/Object;)LnU;

    if-nez p1, :cond_1

    .line 8
    iget-object v0, p0, LjO0;->c:LON0;

    .line 9
    iget-object v0, v0, LON0;->c:LnU;

    sget-object v1, LKN0;->a:LlU;

    invoke-virtual {v0, v1}, LnU;->a(LlU;)LnU;

    move-result-object v0

    .line 10
    new-instance v1, LbO0;

    invoke-direct {v1, p0}, LbO0;-><init>(LjO0;)V

    invoke-virtual {v0, v1}, LnU;->b(Lorg/chromium/base/Callback;)V

    .line 11
    iget-object v0, p0, LjO0;->d:LVN0;

    .line 12
    iget-object v0, v0, LVN0;->a:LnU;

    sget-object v1, LTN0;->a:LlU;

    invoke-virtual {v0, v1}, LnU;->a(LlU;)LnU;

    move-result-object v0

    .line 13
    new-instance v1, LcO0;

    invoke-direct {v1, p0}, LcO0;-><init>(LjO0;)V

    invoke-virtual {v0, v1}, LnU;->b(Lorg/chromium/base/Callback;)V

    :cond_1
    xor-int/lit8 p1, p1, 0x1

    .line 14
    invoke-static {p1}, LZN0;->a(I)V

    return-void

    .line 15
    :cond_2
    throw v1

    .line 16
    :cond_3
    throw v1
.end method
