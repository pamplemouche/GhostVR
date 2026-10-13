.class public Ltf0;
.super LzQ0;
.source "PG"


# instance fields
.field public final synthetic w:Luf0;


# direct methods
.method public constructor <init>(Luf0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltf0;->w:Luf0;

    invoke-direct {p0}, LzQ0;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ltf0;->w:Luf0;

    iget-object v0, v0, Luf0;->w:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    .line 2
    iget-object v1, v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->C:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    iget-boolean v1, v1, Lorg/chromium/chrome/browser/tab/Tab;->x:Z

    if-eqz v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->H:LNf0;

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
