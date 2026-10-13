.class public LaH0;
.super LSG0;
.source "PG"

# interfaces
.implements LxU;


# static fields
.field public static final z:Ljava/lang/Class;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/tab/Tab;

.field public x:Landroid/view/View;

.field public y:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LaH0;

    sput-object v0, LaH0;->z:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LSG0;-><init>()V

    .line 2
    iput-object p1, p0, LaH0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {p1, p0}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroid/text/SpannableString;
    .locals 2

    .line 5
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    new-instance p1, Lorg/chromium/ui/widget/ChromeBulletSpan;

    invoke-direct {p1, p0}, Lorg/chromium/ui/widget/ChromeBulletSpan;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static a(ZI)V
    .locals 1

    const/4 v0, 0x3

    if-eqz p0, :cond_0

    const-string p0, "Tabs.SadTab.Feedback.Event"

    .line 7
    invoke-static {p0, p1, v0}, LfV;->a(Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    const-string p0, "Tabs.SadTab.Reload.Event"

    .line 8
    invoke-static {p0, p1, v0}, LfV;->a(Ljava/lang/String;II)V

    :goto_0
    return-void
.end method

.method public static a(Lorg/chromium/chrome/browser/tab/Tab;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->r()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 3
    sget-object v0, LaH0;->z:Ljava/lang/Class;

    invoke-virtual {p0, v0}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object p0

    check-cast p0, LaH0;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, LaH0;->b()Z

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method


# virtual methods
.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, LaH0;->x:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, LaH0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 2
    iget-object v1, v1, Lorg/chromium/chrome/browser/tab/Tab;->h:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-virtual {p0}, LaH0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LaH0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->h:Landroid/view/ViewGroup;

    .line 4
    iget-object v1, p0, LaH0;->x:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, LaH0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->x()V

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, LaH0;->x:Landroid/view/View;

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, LaH0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 2
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v0, p0}, LWT;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public onLoadUrl(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/LoadUrlParams;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, LaH0;->c()V

    return-void
.end method

.method public onPageLoadFinished(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, LaH0;->y:I

    .line 2
    invoke-virtual {p0}, LaH0;->c()V

    return-void
.end method

.method public onPageLoadStarted(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, LaH0;->c()V

    return-void
.end method
