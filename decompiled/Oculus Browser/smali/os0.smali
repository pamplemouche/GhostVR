.class public final synthetic Los0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Los0;->w:Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Los0;->w:Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;

    .line 1
    iget-object p1, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;->w:Lrs0;

    check-cast p1, Lws0;

    if-eqz p1, :cond_1

    .line 2
    new-instance v0, Lss0;

    invoke-direct {v0, p1}, Lss0;-><init>(Lws0;)V

    .line 3
    iget-object p1, p1, Lws0;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lss0;->run()V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 4
    throw p1
.end method
