.class public LRG0;
.super LSG0;
.source "PG"


# instance fields
.field public w:I

.field public final x:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, LSG0;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LRG0;->x:Ljava/util/ArrayList;

    .line 3
    iput p1, p0, LRG0;->w:I

    return-void
.end method


# virtual methods
.method public onDestroyed(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    iget-object v0, p0, LRG0;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onShown(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 1

    .line 1
    iget-object p2, p0, LRG0;->x:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 2
    iget-object p2, p0, LRG0;->x:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    const-string v0, "Tabs.FirstSwitchedToForegroundCreationRank"

    .line 3
    invoke-static {v0, p1}, LfV;->b(Ljava/lang/String;I)V

    const-string p1, "Tabs.FirstSwitchedToForegroundCreationReverseRank"

    .line 4
    invoke-static {p1, p2}, LfV;->b(Ljava/lang/String;I)V

    .line 5
    iget-object p1, p0, LRG0;->x:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/chromium/chrome/browser/tab/Tab;

    .line 6
    iget-object p2, p2, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {p2, p0}, LWT;->b(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, LRG0;->x:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
