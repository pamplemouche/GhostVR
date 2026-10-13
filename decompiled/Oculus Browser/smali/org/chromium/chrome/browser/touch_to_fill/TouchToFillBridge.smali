.class public Lorg/chromium/chrome/browser/touch_to_fill/TouchToFillBridge;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LhL0;


# instance fields
.field public a:J

.field public final b:LiL0;


# direct methods
.method public constructor <init>(JLorg/chromium/ui/base/WindowAndroid;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/chromium/chrome/browser/touch_to_fill/TouchToFillBridge;->a:J

    .line 3
    invoke-virtual {p3}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/ChromeActivity;

    .line 4
    new-instance p2, LlL0;

    invoke-direct {p2}, LlL0;-><init>()V

    iput-object p2, p0, Lorg/chromium/chrome/browser/touch_to_fill/TouchToFillBridge;->b:LiL0;

    .line 5
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->q0()LtQ0;

    move-result-object p3

    check-cast p2, LlL0;

    .line 6
    iget-object v0, p2, LlL0;->a:LpL0;

    iget-object v1, p2, LlL0;->b:Lle1;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070332

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 8
    iput-object p0, v0, LpL0;->a:LhL0;

    .line 9
    iput-object v1, v0, LpL0;->b:Lle1;

    .line 10
    iput v2, v0, LpL0;->c:I

    .line 11
    iget-object p2, p2, LlL0;->b:Lle1;

    new-instance v0, LvL0;

    invoke-direct {v0, p1, p3}, LvL0;-><init>(Landroid/content/Context;LtQ0;)V

    .line 12
    sget-object p1, LkL0;->a:Lne1;

    invoke-static {p2, v0, p1}, Loe1;->a(Lqe1;Ljava/lang/Object;Lne1;)Loe1;

    return-void
.end method

.method public static create(JLorg/chromium/ui/base/WindowAndroid;)Lorg/chromium/chrome/browser/touch_to_fill/TouchToFillBridge;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/touch_to_fill/TouchToFillBridge;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/touch_to_fill/TouchToFillBridge;-><init>(JLorg/chromium/ui/base/WindowAndroid;)V

    return-object v0
.end method

.method public static createCredentialArray(I)[Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;
    .locals 0

    .line 1
    new-array p0, p0, [Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;

    return-object p0
.end method

.method private destroy()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/chrome/browser/touch_to_fill/TouchToFillBridge;->a:J

    return-void
.end method

.method public static insertCredential([Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 1
    new-instance v6, Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;

    move-object v0, v6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v6, p0, p1

    return-void
.end method

.method private showCredentials(Ljava/lang/String;Z[Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/touch_to_fill/TouchToFillBridge;->b:LiL0;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    check-cast v0, LlL0;

    .line 2
    iget-object v0, v0, LlL0;->a:LpL0;

    .line 3
    iget-object v1, v0, LpL0;->b:Lle1;

    sget-object v2, LsL0;->d:Lke1;

    new-instance v3, LmL0;

    invoke-direct {v3, v0}, LmL0;-><init>(LpL0;)V

    invoke-virtual {v1, v2, v3}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, LpL0;->b:Lle1;

    sget-object v2, LsL0;->b:Lfe1;

    invoke-virtual {v1, v2}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LKd1;

    .line 5
    invoke-virtual {v1}, LLd1;->clear()V

    .line 6
    new-instance v2, LPd1;

    sget-object v3, LrL0;->c:[LUd1;

    .line 7
    invoke-static {v3}, Lle1;->a([LUd1;)Ljava/util/Map;

    move-result-object v3

    .line 8
    sget-object v4, LrL0;->a:Lfe1;

    .line 9
    invoke-static {p1}, LJ/N;->MNXObKbV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 10
    new-instance v6, Lbe1;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lbe1;-><init>(LVd1;)V

    .line 11
    iput-object v5, v6, Lbe1;->a:Ljava/lang/Object;

    .line 12
    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v4, LrL0;->b:Lce1;

    .line 14
    new-instance v5, LWd1;

    invoke-direct {v5, v7}, LWd1;-><init>(LVd1;)V

    .line 15
    iput-boolean p2, v5, LWd1;->a:Z

    .line 16
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance p2, Lle1;

    invoke-direct {p2, v3, v7}, Lle1;-><init>(Ljava/util/Map;LVd1;)V

    const/4 v3, 0x1

    .line 18
    invoke-direct {v2, v3, p2}, LPd1;-><init>(ILle1;)V

    .line 19
    invoke-virtual {v1, v2}, LLd1;->add(Ljava/lang/Object;)V

    .line 20
    iput-object p3, v0, LpL0;->d:Ljava/util/List;

    .line 21
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;

    .line 22
    invoke-virtual {v0, v2}, LpL0;->a(Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;)Lle1;

    move-result-object v4

    .line 23
    new-instance v5, LPd1;

    const/4 v6, 0x2

    invoke-direct {v5, v6, v4}, LPd1;-><init>(ILle1;)V

    invoke-virtual {v1, v5}, LLd1;->add(Ljava/lang/Object;)V

    .line 24
    iget-object v5, v0, LpL0;->a:LhL0;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;->getOriginUrl()Ljava/lang/String;

    move-result-object v6

    iget v7, v0, LpL0;->c:I

    new-instance v8, LnL0;

    invoke-direct {v8, v4}, LnL0;-><init>(Lle1;)V

    invoke-interface {v5, v6, p1, v7, v8}, LhL0;->a(Ljava/lang/String;Ljava/lang/String;ILorg/chromium/base/Callback;)V

    .line 25
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ne v4, v3, :cond_1

    const-string v4, "TouchToFillAndroid"

    const-string v6, "show_confirmation_button"

    .line 26
    invoke-static {v4, v6, v5}, LJ/N;->MGYscfpZ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x1

    :cond_1
    if-eqz v5, :cond_0

    .line 27
    new-instance v4, LPd1;

    const/4 v5, 0x3

    .line 28
    invoke-virtual {v0, v2}, LpL0;->a(Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;)Lle1;

    move-result-object v2

    invoke-direct {v4, v5, v2}, LPd1;-><init>(ILle1;)V

    .line 29
    invoke-virtual {v1, v4}, LLd1;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 30
    :cond_2
    iget-object p1, v0, LpL0;->b:Lle1;

    sget-object p2, LsL0;->a:Lhe1;

    invoke-virtual {p1, p2, v3}, Lle1;->a(Lhe1;Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/touch_to_fill/TouchToFillBridge;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/touch_to_fill/TouchToFillBridge;->a:J

    .line 2
    invoke-static {v0, v1}, LJ/N;->MO$_q9pf(J)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILorg/chromium/base/Callback;)V
    .locals 6

    .line 5
    iget-wide v0, p0, Lorg/chromium/chrome/browser/touch_to_fill/TouchToFillBridge;->a:J

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 6
    invoke-static/range {v0 .. v5}, LJ/N;->M5S6wHZB(JLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public a(Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;)V
    .locals 2

    .line 3
    iget-wide v0, p0, Lorg/chromium/chrome/browser/touch_to_fill/TouchToFillBridge;->a:J

    .line 4
    invoke-static {v0, v1, p1}, LJ/N;->MW5teN_W(JLjava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/touch_to_fill/TouchToFillBridge;->a:J

    .line 2
    invoke-static {v0, v1}, LJ/N;->MZxrSSig(J)V

    return-void
.end method
