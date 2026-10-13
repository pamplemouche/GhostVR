.class public Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/List;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/util/List;

.field public final g:Lorg/chromium/components/omnibox/SuggestionAnswer;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:I

.field public final m:I

.field public final n:Z

.field public final o:Z


# direct methods
.method public constructor <init>(IZIILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lorg/chromium/components/omnibox/SuggestionAnswer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->a:I

    .line 3
    iput-boolean p2, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->b:Z

    .line 4
    iput p3, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->l:I

    .line 5
    iput p4, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->m:I

    .line 6
    iput-object p5, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->c:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->d:Ljava/util/List;

    .line 8
    iput-object p7, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->e:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->f:Ljava/util/List;

    .line 10
    iput-object p9, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->g:Lorg/chromium/components/omnibox/SuggestionAnswer;

    .line 11
    invoke-static {p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p5, p10

    :goto_0
    iput-object p5, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->h:Ljava/lang/String;

    .line 12
    iput-object p11, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->i:Ljava/lang/String;

    .line 13
    iput-object p12, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->j:Ljava/lang/String;

    .line 14
    iput-object p13, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->k:Ljava/lang/String;

    .line 15
    iput-boolean p14, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->n:Z

    .line 16
    iput-boolean p15, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->o:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->g:Lorg/chromium/components/omnibox/SuggestionAnswer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

    .line 3
    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->a:I

    iget v2, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->a:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->h:Ljava/lang/String;

    iget-object v2, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->h:Ljava/lang/String;

    .line 4
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->c:Ljava/lang/String;

    iget-object v2, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->c:Ljava/lang/String;

    .line 5
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->d:Ljava/util/List;

    iget-object v2, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->d:Ljava/util/List;

    .line 6
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->e:Ljava/lang/String;

    iget-object v2, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->e:Ljava/lang/String;

    .line 8
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->f:Ljava/util/List;

    iget-object v2, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->f:Ljava/util/List;

    .line 9
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->n:Z

    iget-boolean v2, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->n:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->o:Z

    iget-boolean v2, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->o:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->g:Lorg/chromium/components/omnibox/SuggestionAnswer;

    iget-object p1, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->g:Lorg/chromium/components/omnibox/SuggestionAnswer;

    .line 11
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->a:I

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    .line 2
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->n:Z

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->o:Z

    add-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->g:Lorg/chromium/components/omnibox/SuggestionAnswer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/chromium/components/omnibox/SuggestionAnswer;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " relevance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
