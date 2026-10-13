.class public abstract LoH0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, LoH0;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    sget-object v0, LoH0;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 4

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->y:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->y:I

    .line 4
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v0, v1}, Lorg/chromium/content_public/browser/WebContents;->setImportance(I)V

    .line 6
    :goto_0
    sget-object v0, LoH0;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 7
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/tab/Tab;

    .line 9
    iget-boolean v2, v1, Lorg/chromium/chrome/browser/tab/Tab;->x:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 10
    iget v3, v1, Lorg/chromium/chrome/browser/tab/Tab;->y:I

    if-nez v3, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    iput v2, v1, Lorg/chromium/chrome/browser/tab/Tab;->y:I

    .line 12
    iget-object v1, v1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-nez v1, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    invoke-interface {v1, v2}, Lorg/chromium/content_public/browser/WebContents;->setImportance(I)V

    .line 14
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 15
    :cond_5
    sget-object v0, LoH0;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, LoH0;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method
