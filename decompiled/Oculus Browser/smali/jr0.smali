.class public Ljr0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LDd1;


# instance fields
.field public final synthetic w:I

.field public final synthetic x:Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

.field public final synthetic y:LBd1;

.field public final synthetic z:Lmr0;


# direct methods
.method public constructor <init>(Lmr0;ILorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;LBd1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljr0;->z:Lmr0;

    iput p2, p0, Ljr0;->w:I

    iput-object p3, p0, Ljr0;->x:Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

    iput-object p4, p0, Ljr0;->y:LBd1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lle1;I)V
    .locals 0

    return-void
.end method

.method public b(Lle1;I)V
    .locals 3

    const/4 v0, 0x1

    if-nez p2, :cond_0

    const-string p2, "MobileOmniboxDeleteRequested"

    .line 1
    invoke-static {p2}, LhV;->a(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Ljr0;->z:Lmr0;

    .line 3
    iget-object p2, p2, Lmr0;->K:Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;

    .line 4
    iget v1, p0, Ljr0;->w:I

    iget-object v2, p0, Ljr0;->x:Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->hashCode()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->a(II)V

    .line 5
    iget-object p2, p0, Ljr0;->y:LBd1;

    invoke-virtual {p2, p1, v0}, LBd1;->a(Lle1;I)V

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    .line 6
    iget-object p2, p0, Ljr0;->y:LBd1;

    const/4 v0, 0x2

    invoke-virtual {p2, p1, v0}, LBd1;->a(Lle1;I)V

    :cond_1
    :goto_0
    return-void
.end method
