.class public abstract Lkr0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

.field public final x:I

.field public y:Z


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkr0;->w:Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

    .line 3
    iput p2, p0, Lkr0;->x:I

    return-void
.end method
