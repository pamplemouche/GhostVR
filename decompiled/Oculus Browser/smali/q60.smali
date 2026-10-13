.class public Lq60;
.super LwH0;
.source "PG"


# instance fields
.field public final synthetic c:Lt60;


# direct methods
.method public constructor <init>(Lt60;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq60;->c:Lt60;

    invoke-direct {p0, p2}, LwH0;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lq60;->c:Lt60;

    .line 2
    iget-boolean v0, v0, Lt60;->b:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-super {p0}, LwH0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
