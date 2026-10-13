.class public LUc0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lbd0;


# direct methods
.method public constructor <init>(Lbd0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LUc0;->w:Lbd0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, LUc0;->w:Lbd0;

    invoke-virtual {v0}, Lkd0;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LUc0;->w:Lbd0;

    invoke-virtual {v0}, Lkd0;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-static {v0}, LgH0;->b(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, LUc0;->w:Lbd0;

    .line 4
    iget-object v0, v0, Lbd0;->x:LOc0;

    .line 5
    invoke-virtual {v0}, LOc0;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, LUc0;->w:Lbd0;

    invoke-virtual {v0}, Lbd0;->setPositionsForTabToNonFullscreen()V

    :cond_1
    :goto_0
    return-void
.end method
