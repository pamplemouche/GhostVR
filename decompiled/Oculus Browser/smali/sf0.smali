.class public Lsf0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LMf0;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsf0;->w:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsf0;->w:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    .line 2
    iget-object v0, v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->A:LWT;

    .line 3
    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvf0;

    .line 4
    invoke-interface {v1, p1}, Lvf0;->a(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(LIf0;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lsf0;->w:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    .line 6
    iget-object v0, v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->A:LWT;

    .line 7
    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvf0;

    .line 8
    invoke-interface {v1, p1}, Lvf0;->a(LIf0;)V

    goto :goto_0

    :cond_0
    return-void
.end method
