.class public Lorg/chromium/content/browser/selection/SmartSelectionClient;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LV01;


# instance fields
.field public a:J

.field public b:Lp01;

.field public c:LU01;

.field public d:Lm01;


# direct methods
.method public constructor <init>(LU01;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lp01;

    invoke-direct {v0, p1, p3}, Lp01;-><init>(LU01;Lorg/chromium/ui/base/WindowAndroid;)V

    iput-object v0, p0, Lorg/chromium/content/browser/selection/SmartSelectionClient;->b:Lp01;

    .line 3
    iput-object p1, p0, Lorg/chromium/content/browser/selection/SmartSelectionClient;->c:LU01;

    .line 4
    invoke-virtual {p3}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const-string p3, "android.view.textclassifier.logging.SmartSelectionEventTracker$SelectionEvent"

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-le v0, v1, :cond_5

    if-eqz p1, :cond_5

    sget-boolean v0, Lm01;->i:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 6
    :cond_0
    sget-object v0, Lm01;->e:Ljava/lang/Class;

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "android.view.textclassifier.logging.SmartSelectionEventTracker"

    .line 7
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lm01;->e:Ljava/lang/Class;

    .line 8
    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lm01;->f:Ljava/lang/Class;

    .line 9
    sget-object v0, Lm01;->e:Ljava/lang/Class;

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lm01;->g:Ljava/lang/reflect/Constructor;

    .line 10
    sget-object v0, Lm01;->e:Ljava/lang/Class;

    const-string v5, "logEvent"

    new-array v6, v4, [Ljava/lang/Class;

    sget-object v7, Lm01;->f:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lm01;->h:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :catch_0
    sput-boolean v4, Lm01;->i:Z

    goto/16 :goto_4

    :cond_1
    :goto_0
    const-string v0, "selectionAction"

    const-string v5, "selectionModified"

    .line 12
    sget-boolean v6, La01;->h:Z

    if-eqz v6, :cond_2

    goto/16 :goto_1

    .line 13
    :cond_2
    sget-object v6, La01;->a:Ljava/lang/Class;

    if-nez v6, :cond_3

    .line 14
    :try_start_1
    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    sput-object p3, La01;->a:Ljava/lang/Class;

    const-string v6, "selectionStarted"

    new-array v7, v4, [Ljava/lang/Class;

    .line 15
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    .line 16
    invoke-virtual {p3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    sput-object p3, La01;->b:Ljava/lang/reflect/Method;

    .line 17
    sget-object p3, La01;->a:Ljava/lang/Class;

    new-array v6, v1, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {p3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    sput-object p3, La01;->c:Ljava/lang/reflect/Method;

    .line 18
    sget-object p3, La01;->a:Ljava/lang/Class;

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    const-class v8, Landroid/view/textclassifier/TextClassification;

    aput-object v8, v7, v1

    invoke-virtual {p3, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    sput-object p3, La01;->d:Ljava/lang/reflect/Method;

    .line 19
    sget-object p3, La01;->a:Ljava/lang/Class;

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    const-class v8, Landroid/view/textclassifier/TextSelection;

    aput-object v8, v7, v1

    invoke-virtual {p3, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    sput-object p3, La01;->e:Ljava/lang/reflect/Method;

    .line 20
    sget-object p3, La01;->a:Ljava/lang/Class;

    new-array v5, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v4

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v1

    invoke-virtual {p3, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    sput-object p3, La01;->f:Ljava/lang/reflect/Method;

    .line 21
    sget-object p3, La01;->a:Ljava/lang/Class;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v5, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v5, v1

    const-class v1, Landroid/view/textclassifier/TextClassification;

    aput-object v1, v5, v6

    .line 22
    invoke-virtual {p3, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    sput-object p3, La01;->g:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 23
    :catch_1
    sput-boolean v4, La01;->h:Z

    :goto_1
    move-object p3, v2

    goto :goto_3

    .line 24
    :cond_3
    :goto_2
    new-instance p3, La01;

    invoke-direct {p3}, La01;-><init>()V

    :goto_3
    if-nez p3, :cond_4

    goto :goto_4

    .line 25
    :cond_4
    new-instance v2, Lm01;

    invoke-direct {v2, p1, p3}, Lm01;-><init>(Landroid/content/Context;Ll01;)V

    .line 26
    :cond_5
    :goto_4
    iput-object v2, p0, Lorg/chromium/content/browser/selection/SmartSelectionClient;->d:Lm01;

    .line 27
    invoke-static {p0, p2}, LJ/N;->MFA_dMJC(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide p1

    .line 28
    iput-wide p1, p0, Lorg/chromium/content/browser/selection/SmartSelectionClient;->a:J

    return-void
.end method

.method private onNativeSideDestroyed(J)V
    .locals 1

    const-wide/16 p1, 0x0

    .line 1
    iput-wide p1, p0, Lorg/chromium/content/browser/selection/SmartSelectionClient;->a:J

    .line 2
    iget-object p1, p0, Lorg/chromium/content/browser/selection/SmartSelectionClient;->b:Lp01;

    .line 3
    iget-object p2, p1, Lp01;->c:Lo01;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p2, v0}, LkW;->cancel(Z)Z

    const/4 p2, 0x0

    .line 5
    iput-object p2, p1, Lp01;->c:Lo01;

    :cond_0
    return-void
.end method

.method private onSurroundingTextReceived(ILjava/lang/String;II)V
    .locals 3

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    if-ltz p3, :cond_0

    if-ge p3, p4, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p4, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2
    iget-object p1, p0, Lorg/chromium/content/browser/selection/SmartSelectionClient;->c:LU01;

    new-instance p2, LT01;

    invoke-direct {p2}, LT01;-><init>()V

    check-cast p1, Li01;

    invoke-virtual {p1, p2}, Li01;->a(LT01;)V

    return-void

    :cond_1
    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    iget-object p1, p0, Lorg/chromium/content/browser/selection/SmartSelectionClient;->b:Lp01;

    .line 4
    invoke-virtual {p1, v2, p2, p3, p4}, Lp01;->a(ILjava/lang/CharSequence;II)V

    goto :goto_1

    .line 5
    :cond_3
    iget-object p1, p0, Lorg/chromium/content/browser/selection/SmartSelectionClient;->b:Lp01;

    .line 6
    invoke-virtual {p1, v1, p2, p3, p4}, Lp01;->a(ILjava/lang/CharSequence;II)V

    :goto_1
    return-void
.end method


# virtual methods
.method public a()LW01;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SmartSelectionClient;->d:Lm01;

    return-object v0
.end method

.method public a(IFF)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(ZII)V
    .locals 0

    return-void
.end method

.method public a(Z)Z
    .locals 5

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/selection/SmartSelectionClient;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    const-string v1, ""

    .line 3
    invoke-direct {p0, p1, v1, v0, v0}, Lorg/chromium/content/browser/selection/SmartSelectionClient;->onSurroundingTextReceived(ILjava/lang/String;II)V

    goto :goto_0

    :cond_0
    const/16 v2, 0xf0

    .line 4
    invoke-static {v0, v1, p0, v2, p1}, LJ/N;->M2GZ6ZNR(JLjava/lang/Object;II)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public b()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/content/browser/selection/SmartSelectionClient;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->MVHq2mA2(JLjava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SmartSelectionClient;->b:Lp01;

    .line 4
    iget-object v1, v0, Lp01;->c:Lo01;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2}, LkW;->cancel(Z)Z

    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Lp01;->c:Lo01;

    :cond_1
    return-void
.end method
