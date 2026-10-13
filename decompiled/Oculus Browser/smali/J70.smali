.class public LJ70;
.super LSG0;
.source "PG"

# interfaces
.implements Lorg/chromium/components/dom_distiller/content/DistillablePageUtils$PageDistillableDelegate;
.implements LxU;


# static fields
.field public static final C:Ljava/lang/Class;


# instance fields
.field public A:Z

.field public B:Z

.field public final w:LWT;

.field public x:Lorg/chromium/chrome/browser/tab/Tab;

.field public y:Lorg/chromium/content_public/browser/WebContents;

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LJ70;

    sput-object v0, LJ70;->C:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LSG0;-><init>()V

    .line 2
    iput-object p1, p0, LJ70;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    new-instance p1, LWT;

    invoke-direct {p1}, LWT;-><init>()V

    iput-object p1, p0, LJ70;->w:LWT;

    .line 4
    invoke-virtual {p0}, LJ70;->b()V

    .line 5
    iget-object p1, p0, LJ70;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 6
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {p1, p0}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(ZZZ)V
    .locals 8

    .line 1
    iput-boolean p1, p0, LJ70;->z:Z

    .line 2
    iput-boolean p2, p0, LJ70;->A:Z

    .line 3
    iput-boolean p3, p0, LJ70;->B:Z

    .line 4
    iget-object p1, p0, LJ70;->w:LWT;

    invoke-virtual {p1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LI70;

    .line 5
    iget-object p3, p0, LJ70;->x:Lorg/chromium/chrome/browser/tab/Tab;

    iget-boolean v0, p0, LJ70;->z:Z

    iget-boolean v1, p0, LJ70;->A:Z

    iget-boolean v2, p0, LJ70;->B:Z

    check-cast p2, LD70;

    .line 6
    iget-object p2, p2, LD70;->a:LG70;

    .line 7
    iget-object v3, p2, LG70;->A:LpI0;

    if-nez v3, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v3, p2, LG70;->y:Ljava/util/Map;

    invoke-virtual {p3}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LH70;

    if-nez v3, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p3}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, LH70;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v4

    if-eqz v4, :cond_a

    const/4 v5, 0x4

    .line 11
    invoke-static {v4, v5}, LJ/N;->MVEXC539(Ljava/lang/Object;I)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_4

    .line 12
    invoke-static {}, LC70;->a()I

    move-result v4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_5

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    if-eqz v0, :cond_6

    if-nez v2, :cond_6

    .line 13
    iput v5, v3, LH70;->b:I

    .line 14
    invoke-virtual {p3}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result p3

    iget-object v0, p2, LG70;->A:LpI0;

    check-cast v0, LrI0;

    invoke-virtual {v0}, LrI0;->c()I

    move-result v0

    if-ne p3, v0, :cond_7

    .line 15
    invoke-virtual {p2}, LG70;->c()V

    goto :goto_3

    .line 16
    :cond_6
    iput v6, v3, LH70;->b:I

    .line 17
    :cond_7
    :goto_3
    iget-boolean p3, p2, LG70;->x:Z

    if-nez p3, :cond_0

    iget p3, v3, LH70;->b:I

    if-eqz p3, :cond_8

    if-eqz v1, :cond_0

    .line 18
    :cond_8
    iput-boolean v6, p2, LG70;->x:Z

    .line 19
    iget p2, v3, LH70;->b:I

    if-nez p2, :cond_9

    const/4 v5, 0x1

    :cond_9
    const-string p2, "DomDistiller.PageDistillable"

    invoke-static {p2, v5}, LfV;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_a
    const/4 p1, 0x0

    .line 20
    throw p1

    :cond_b
    return-void
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, LJ70;->z:Z

    .line 2
    iput-boolean v0, p0, LJ70;->A:Z

    .line 3
    iput-boolean v0, p0, LJ70;->B:Z

    .line 4
    iget-object v0, p0, LJ70;->x:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, LJ70;->y:Lorg/chromium/content_public/browser/WebContents;

    if-eq v0, v1, :cond_0

    .line 7
    iput-object v0, p0, LJ70;->y:Lorg/chromium/content_public/browser/WebContents;

    .line 8
    invoke-static {v0, p0}, LJ/N;->MFtP575Y(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, LJ70;->w:LWT;

    invoke-virtual {v0}, LWT;->clear()V

    .line 2
    iget-object v0, p0, LJ70;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v0, p0}, LWT;->b(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, LJ70;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 5
    iput-object v0, p0, LJ70;->y:Lorg/chromium/content_public/browser/WebContents;

    .line 6
    invoke-virtual {p0}, LJ70;->b()V

    return-void
.end method

.method public onActivityAttachmentChanged(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 0

    if-eqz p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, LJ70;->b()V

    return-void
.end method

.method public onContentChanged(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, LJ70;->b()V

    return-void
.end method
