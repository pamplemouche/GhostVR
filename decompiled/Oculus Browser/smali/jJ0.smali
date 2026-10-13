.class public LjJ0;
.super LSG0;
.source "PG"

# interfaces
.implements LL50;


# static fields
.field public static y:LjJ0;


# instance fields
.field public w:Lorg/chromium/chrome/browser/tab/Tab;

.field public x:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LSG0;-><init>()V

    .line 2
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {p1, p0}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 13

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ChromeActivity;->k0()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, LjJ0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    if-nez v2, :cond_c

    if-nez v1, :cond_1

    goto/16 :goto_5

    :cond_1
    if-eqz v2, :cond_2

    goto/16 :goto_4

    .line 4
    :cond_2
    iput-object p1, p0, LjJ0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 5
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 7
    iget-object v9, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v10, "TaskRecognizer"

    if-nez v3, :cond_b

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    if-nez v9, :cond_3

    goto/16 :goto_3

    .line 9
    :cond_3
    iget-object v2, p0, LjJ0;->x:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->a()V

    .line 10
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 11
    new-instance v11, LN40;

    invoke-direct {v11}, LN40;-><init>()V

    const/4 v8, 0x0

    const-string v4, "UTF-8"

    move-object v3, v11

    move-object v5, v1

    move v6, v2

    move v7, v2

    .line 12
    invoke-virtual/range {v3 .. v8}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->a(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 13
    invoke-virtual {v11, v2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->b(I)I

    move-result v12

    .line 14
    invoke-virtual {v11, v2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->a(I)I

    move-result v2

    const-string v4, "UTF-8"

    const/4 v8, 0x1

    move v6, v12

    move v7, v2

    .line 15
    invoke-virtual/range {v3 .. v8}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->a(Ljava/lang/String;Ljava/lang/String;IIZ)V

    if-ge v12, v2, :cond_5

    if-ltz v12, :cond_5

    .line 16
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_5

    .line 17
    invoke-virtual {v1, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 18
    iput-object v1, v11, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->h:Ljava/lang/String;

    .line 19
    :cond_5
    invoke-virtual {v11}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 20
    iget-object v1, v11, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->h:Ljava/lang/String;

    .line 21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "identified default query: "

    .line 22
    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 23
    iget-object v2, v11, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->j:Ljava/lang/String;

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "TTS Context"

    invoke-static {v3, v1, v2}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-string v4, "US"

    move-object v3, v11

    .line 25
    invoke-virtual/range {v3 .. v8}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->a(Ljava/lang/String;ZJI)V

    goto :goto_1

    :cond_6
    const/4 v11, 0x0

    .line 26
    :goto_1
    iput-object v11, p0, LjJ0;->x:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;

    if-nez v11, :cond_7

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "not a context. :-("

    .line 27
    invoke-static {v10, v2, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 28
    :cond_7
    sget-object v1, Lorg/chromium/chrome/browser/contextualsearch/SimpleSearchTermResolver;->c:Lorg/chromium/chrome/browser/contextualsearch/SimpleSearchTermResolver;

    if-nez v1, :cond_8

    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/SimpleSearchTermResolver;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/contextualsearch/SimpleSearchTermResolver;-><init>()V

    sput-object v1, Lorg/chromium/chrome/browser/contextualsearch/SimpleSearchTermResolver;->c:Lorg/chromium/chrome/browser/contextualsearch/SimpleSearchTermResolver;

    .line 29
    :cond_8
    sget-object v1, Lorg/chromium/chrome/browser/contextualsearch/SimpleSearchTermResolver;->c:Lorg/chromium/chrome/browser/contextualsearch/SimpleSearchTermResolver;

    .line 30
    iget-object v2, p0, LjJ0;->x:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;

    .line 31
    iput-object p0, v1, Lorg/chromium/chrome/browser/contextualsearch/SimpleSearchTermResolver;->b:LL50;

    if-eqz v2, :cond_a

    .line 32
    iget-boolean v3, v2, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->b:Z

    if-eqz v3, :cond_9

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->b()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    goto :goto_2

    :cond_9
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_a

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "TTS Resolver"

    const-string v4, "calling SimpleSearchTermResolverJni.get().startSearchTermResolutionRequest."

    .line 33
    invoke-static {v3, v4, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iget-wide v3, v1, Lorg/chromium/chrome/browser/contextualsearch/SimpleSearchTermResolver;->a:J

    .line 35
    invoke-static {v3, v4, v1, v2, v9}, LJ/N;->M8lyChdY(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    const/4 v0, 0x1

    goto :goto_4

    :cond_b
    :goto_3
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "not a good page. :-("

    .line 36
    invoke-static {v10, v2, v1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    if-eqz v0, :cond_c

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to show product info for tab: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    iput-object p1, p0, LjJ0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    :cond_c
    :goto_5
    return-void
.end method

.method public onPageLoadFinished(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LjJ0;->a(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method

.method public onTitleUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LjJ0;->a(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method
