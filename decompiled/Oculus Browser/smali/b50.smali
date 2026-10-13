.class public Lb50;
.super Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;
.source "PG"


# instance fields
.field public final synthetic q:Le50;


# direct methods
.method public constructor <init>(Le50;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb50;->q:Le50;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 6

    .line 1
    iget-object v0, p0, Lb50;->q:Le50;

    iget-object v0, v0, Le50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 2
    iget-object v1, v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->m:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;

    .line 3
    iget-object v2, v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->c:Ljava/lang/String;

    .line 4
    iget v3, v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->d:I

    .line 5
    iget v1, v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->e:I

    const/16 v4, 0x10

    .line 6
    invoke-static {v4}, LP40;->a(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 7
    new-instance v4, Lme0;

    iget-object v5, v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->m:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;

    .line 8
    iget-object v5, v5, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->i:Ljava/lang/String;

    .line 9
    invoke-direct {v4, v5, v2, v3, v1}, Lme0;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 10
    iget-object v1, v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->h:Lj50;

    .line 11
    invoke-virtual {v1}, Lj50;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    iget-object v2, v1, Lj50;->c:Lh50;

    invoke-interface {v2}, Lh50;->h()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Lj50;->a(Ljava/net/URL;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    const/4 v4, 0x0

    .line 13
    :cond_1
    iget-object v0, v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->a:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li50;

    .line 14
    invoke-interface {v1, v4}, Li50;->a(Lme0;)V

    goto :goto_1

    :cond_2
    return-void
.end method
