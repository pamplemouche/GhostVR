.class public LEW0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LxU;


# instance fields
.field public final w:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LEW0;->w:Ljava/util/List;

    return-void
.end method

.method public static a(Lorg/chromium/content_public/browser/WebContents;)LEW0;
    .locals 2

    .line 1
    check-cast p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    const-class v0, LEW0;

    .line 2
    sget-object v1, LDW0;->a:Lt01;

    .line 3
    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->a(Ljava/lang/Class;Lt01;)LxU;

    move-result-object p0

    check-cast p0, LEW0;

    return-object p0
.end method

.method public static b(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->N:Z

    .line 3
    invoke-virtual {v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->j()V

    .line 4
    :cond_1
    invoke-static {p0}, LEW0;->a(Lorg/chromium/content_public/browser/WebContents;)LEW0;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 5
    invoke-virtual {p0}, LEW0;->a()V

    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 4
    iget-object v0, p0, LEW0;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LBW0;

    invoke-interface {v1}, LBW0;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method
