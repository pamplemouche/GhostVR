.class public Lir0;
.super Lkr0;
.source "PG"


# instance fields
.field public final synthetic z:Lmr0;


# direct methods
.method public constructor <init>(Lmr0;Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lir0;->z:Lmr0;

    invoke-direct {p0, p2, p3}, Lkr0;-><init>(Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lir0;->z:Lmr0;

    iget-object v1, p0, Lkr0;->w:Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

    iget v2, p0, Lkr0;->x:I

    .line 2
    invoke-virtual {v0, v1, v2}, Lmr0;->b(Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;I)V

    return-void
.end method
