.class public final synthetic LUd0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:LYd0;

.field public final x:I

.field public final y:Lorg/chromium/content_public/browser/NavigationEntry;


# direct methods
.method public constructor <init>(LYd0;ILorg/chromium/content_public/browser/NavigationEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LUd0;->w:LYd0;

    iput p2, p0, LUd0;->x:I

    iput-object p3, p0, LUd0;->y:Lorg/chromium/content_public/browser/NavigationEntry;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, LUd0;->w:LYd0;

    iget v0, p0, LUd0;->x:I

    iget-object v1, p0, LUd0;->y:Lorg/chromium/content_public/browser/NavigationEntry;

    .line 1
    iget-object p1, p1, LYd0;->a:LWd0;

    .line 2
    iget v1, v1, Lorg/chromium/content_public/browser/NavigationEntry;->a:I

    .line 3
    check-cast p1, LOd0;

    .line 4
    iget-object p1, p1, LOd0;->a:LTd0;

    .line 5
    iget-object v2, p1, LTd0;->e:LMd0;

    check-cast v2, Lge0;

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 6
    iget-object v4, v2, Lge0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v4

    iget-object v2, v2, Lge0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-static {v4, v2}, Lze0;->a(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v2, v2, Lge0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 8
    iget-object v2, v2, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 9
    invoke-interface {v2}, Lorg/chromium/content_public/browser/WebContents;->g()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/chromium/content_public/browser/NavigationController;->e(I)V

    :goto_0
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p1, v2}, LTd0;->a(Z)V

    .line 11
    iget-boolean v4, p1, LTd0;->t:Z

    if-eqz v4, :cond_2

    if-ne v1, v3, :cond_1

    const-string p1, "ShowFullHistory"

    goto :goto_1

    :cond_1
    const-string p1, "HistoryClick"

    .line 12
    invoke-static {p1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackMenu_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LhV;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 14
    :cond_2
    iget-boolean v4, p1, LTd0;->q:Z

    const/4 v5, 0x2

    const-string v6, "GestureNavigation.Sheet.Used"

    .line 15
    invoke-static {v6, v4, v5}, LfV;->a(Ljava/lang/String;II)V

    if-ne v1, v3, :cond_3

    goto :goto_2

    .line 16
    :cond_3
    iget-boolean p1, p1, LTd0;->q:Z

    if-eqz p1, :cond_4

    add-int/lit8 v2, v0, 0x1

    goto :goto_2

    :cond_4
    neg-int p1, v0

    add-int/lit8 v2, p1, -0x1

    :goto_2
    const-string p1, "GestureNavigation.Sheet.Selected"

    .line 17
    invoke-static {p1, v2}, LfV;->e(Ljava/lang/String;I)V

    :goto_3
    return-void
.end method
