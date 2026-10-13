.class public Ls60;
.super LJH0;
.source "PG"


# instance fields
.field public final g:Lpl0;

.field public final h:Z

.field public final i:Z


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/ChromeActivity;Lpl0;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LJH0;-><init>(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/ChromeActivity;)V

    .line 2
    iput-object p3, p0, Ls60;->g:Lpl0;

    .line 3
    iput-boolean p4, p0, Ls60;->h:Z

    .line 4
    iput-boolean p5, p0, Ls60;->i:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public getDisplayMode()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls60;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public openNewTab(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/content_public/common/ResourceRequestBody;IZ)V
    .locals 5

    const/16 v0, 0x8

    if-ne p4, v0, :cond_d

    if-nez p5, :cond_c

    .line 1
    new-instance p4, Lorg/chromium/content_public/browser/LoadUrlParams;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p4, p1, v0}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p2, p4, Lorg/chromium/content_public/browser/LoadUrlParams;->g:Ljava/lang/String;

    .line 4
    iput-object p3, p4, Lorg/chromium/content_public/browser/LoadUrlParams;->i:Lorg/chromium/content_public/common/ResourceRequestBody;

    .line 5
    iput-boolean p5, p4, Lorg/chromium/content_public/browser/LoadUrlParams;->m:Z

    .line 6
    iget-object p1, p0, Ls60;->g:Lpl0;

    .line 7
    sget-object p2, LzT;->a:Landroid/content/Context;

    const/4 p3, 0x0

    if-eqz p1, :cond_b

    .line 8
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le p5, v1, :cond_a

    iget-object p5, p1, Lpl0;->w:Ljava/lang/Boolean;

    if-eqz p5, :cond_0

    .line 9
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    if-nez p5, :cond_0

    goto/16 :goto_1

    .line 10
    :cond_0
    const-class p5, LSY;

    .line 11
    invoke-virtual {p5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p5

    .line 12
    invoke-virtual {p1, p5, p2}, Lpl0;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p5

    if-nez p5, :cond_1

    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p1, Lpl0;->w:Ljava/lang/Boolean;

    .line 14
    const-class p1, LTY;

    goto/16 :goto_2

    .line 15
    :cond_1
    const-class v0, LTY;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {p1, v0, p2}, Lpl0;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 18
    const-class p1, LSY;

    goto/16 :goto_2

    .line 19
    :cond_2
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, p3

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, LTY;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object p3, v2

    goto :goto_0

    .line 21
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, LSY;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v1, v2

    goto :goto_0

    .line 22
    :cond_5
    invoke-static {p3}, Lpl0;->c(Landroid/app/Activity;)Z

    move-result p3

    .line 23
    invoke-static {v1}, Lpl0;->c(Landroid/app/Activity;)Z

    move-result v0

    xor-int/2addr v0, p3

    if-eqz v0, :cond_7

    if-eqz p3, :cond_6

    .line 24
    const-class p1, LTY;

    goto :goto_2

    .line 25
    :cond_6
    const-class p1, LSY;

    goto :goto_2

    .line 26
    :cond_7
    iget-object p1, p1, Lpl0;->x:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_9

    .line 27
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LTY;

    if-eqz p1, :cond_9

    .line 28
    const-class p1, LTY;

    if-eqz p2, :cond_8

    .line 29
    const-class p2, LTY;

    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 31
    const-class p1, LTY;

    goto :goto_2

    :cond_8
    if-eqz p5, :cond_9

    .line 32
    const-class p2, LSY;

    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 34
    const-class p1, LSY;

    goto :goto_2

    .line 35
    :cond_9
    const-class p1, LTY;

    goto :goto_2

    .line 36
    :cond_a
    :goto_1
    const-class p1, LTY;

    .line 37
    :goto_2
    new-instance p2, LhJ0;

    new-instance p3, Landroid/content/ComponentName;

    .line 38
    sget-object p5, LzT;->a:Landroid/content/Context;

    .line 39
    invoke-direct {p3, p5, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p2, p4, p3}, LhJ0;-><init>(Lorg/chromium/content_public/browser/LoadUrlParams;Landroid/content/ComponentName;)V

    .line 40
    new-instance p1, LiJ0;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, LiJ0;-><init>(Z)V

    const/4 p3, 0x4

    const/4 p4, -0x1

    invoke-virtual {p1, p2, p3, p4}, LiJ0;->a(LhJ0;II)V

    return-void

    .line 41
    :cond_b
    throw p3

    .line 42
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid attempt to open an incognito tab from the renderer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_d
    invoke-super/range {p0 .. p5}, Lorg/chromium/components/embedder_support/delegate/WebContentsDelegateAndroid;->openNewTab(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/content_public/common/ResourceRequestBody;IZ)V

    return-void
.end method

.method public shouldEnableEmbeddedMediaExperience()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls60;->h:Z

    return v0
.end method

.method public shouldResumeRequestsForCreatedWindow()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
