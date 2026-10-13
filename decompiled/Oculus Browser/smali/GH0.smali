.class public LGH0;
.super LSG0;
.source "PG"


# instance fields
.field public final synthetic w:LJH0;


# direct methods
.method public constructor <init>(LJH0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LGH0;->w:LJH0;

    invoke-direct {p0}, LSG0;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityAttachmentChanged(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 1
    iget-object p1, p0, LGH0;->w:LJH0;

    const/4 p2, 0x0

    .line 2
    iput-object p2, p1, LJH0;->f:Lorg/chromium/chrome/browser/ChromeActivity;

    :cond_0
    return-void
.end method

.method public onDestroyed(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {p1, p0}, LWT;->b(Ljava/lang/Object;)Z

    return-void
.end method
