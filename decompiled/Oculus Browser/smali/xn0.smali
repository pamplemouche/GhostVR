.class public Lxn0;
.super LSG0;
.source "PG"


# instance fields
.field public final synthetic w:Lyn0;


# direct methods
.method public constructor <init>(Lyn0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxn0;->w:Lyn0;

    invoke-direct {p0}, LSG0;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lxn0;->w:Lyn0;

    .line 2
    iget-object v1, v0, Lyn0;->d:Lwn0;

    .line 3
    iget v1, v1, Lwn0;->z:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {v0, v1}, Lyn0;->a(Z)V

    return-void
.end method

.method public onDestroyed(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lxn0;->w:Lyn0;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lyn0;->e:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 3
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {p1, p0}, LWT;->b(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lxn0;->b()V

    return-void
.end method

.method public onHidden(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lxn0;->w:Lyn0;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p2, Lyn0;->e:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 3
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {p1, p0}, LWT;->b(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lxn0;->b()V

    return-void
.end method

.method public onLoadStopped(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 1

    .line 1
    iget-object p2, p0, Lxn0;->w:Lyn0;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p2, Lyn0;->e:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 3
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {p1, p0}, LWT;->b(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lxn0;->b()V

    return-void
.end method
