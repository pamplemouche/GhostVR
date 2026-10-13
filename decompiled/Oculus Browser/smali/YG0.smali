.class public LYG0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Z

.field public final synthetic x:LaH0;


# direct methods
.method public constructor <init>(LaH0;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, LYG0;->x:LaH0;

    iput-boolean p2, p0, LYG0;->w:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-boolean v0, p0, LYG0;->w:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LYG0;->x:LaH0;

    .line 3
    iget-object v0, v0, LaH0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 4
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    iget-object v1, p0, LYG0;->x:LaH0;

    .line 5
    iget-object v1, v1, LaH0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 6
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LYG0;->x:LaH0;

    .line 7
    iget-object v2, v2, LaH0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 8
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->j()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v2

    const-string v3, "MobileSadTabFeedback"

    .line 9
    invoke-virtual {v0, v1, v3, v2}, Lorg/chromium/chrome/browser/ChromeActivity;->a(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/profiles/Profile;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, LYG0;->x:LaH0;

    .line 11
    iget-object v0, v0, LaH0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 12
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->A()V

    :goto_0
    return-void
.end method
