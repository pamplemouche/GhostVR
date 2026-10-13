.class public Lu70;
.super LSG0;
.source "PG"


# instance fields
.field public final synthetic w:Lv70;


# direct methods
.method public constructor <init>(Lv70;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu70;->w:Lv70;

    invoke-direct {p0}, LSG0;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityAttachmentChanged(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lu70;->w:Lv70;

    .line 2
    invoke-virtual {p1}, Lv70;->a()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lu70;->w:Lv70;

    .line 4
    iget-object p2, p1, Lv70;->y:LnZ;

    if-nez p2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p2, p2, LnZ;->x:LWT;

    invoke-virtual {p2, p1}, LWT;->b(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 6
    iput-object p2, p1, Lv70;->y:LnZ;

    :goto_0
    return-void
.end method

.method public onInteractabilityChanged(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lu70;->w:Lv70;

    invoke-virtual {p1}, Lv70;->b()V

    return-void
.end method

.method public onShown(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lu70;->w:Lv70;

    invoke-virtual {p1}, Lv70;->b()V

    return-void
.end method
