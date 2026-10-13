.class public Lpc0;
.super LTH0;
.source "PG"


# instance fields
.field public final synthetic a:Lwc0;


# direct methods
.method public constructor <init>(Lwc0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpc0;->a:Lwc0;

    invoke-direct {p0}, LTH0;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectTab(Lorg/chromium/chrome/browser/tab/Tab;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lpc0;->a:Lwc0;

    invoke-virtual {p1}, Lwc0;->c()V

    return-void
.end method

.method public tabRemoved(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lpc0;->a:Lwc0;

    .line 2
    iget-object v1, v0, Lwc0;->G:Lorg/chromium/chrome/browser/tab/Tab;

    if-eq p1, v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lwc0;->c()V

    return-void
.end method
