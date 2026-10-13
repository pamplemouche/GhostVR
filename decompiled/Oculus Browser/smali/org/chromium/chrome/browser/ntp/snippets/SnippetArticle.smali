.class public Lorg/chromium/chrome/browser/ntp/snippets/SnippetArticle;
.super Lqe1;
.source "PG"


# instance fields
.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JFJZLjava/lang/Integer;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lqe1;-><init>()V

    .line 2
    iput p1, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetArticle;->b:I

    .line 3
    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetArticle;->c:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetArticle;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Collection;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lorg/chromium/chrome/browser/ntp/snippets/SnippetArticle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lorg/chromium/chrome/browser/ntp/snippets/SnippetArticle;

    .line 3
    iget v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetArticle;->b:I

    iget v2, p1, Lorg/chromium/chrome/browser/ntp/snippets/SnippetArticle;->b:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetArticle;->c:Ljava/lang/String;

    iget-object p1, p1, Lorg/chromium/chrome/browser/ntp/snippets/SnippetArticle;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetArticle;->b:I

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetArticle;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    const-class v1, Lorg/chromium/chrome/browser/ntp/snippets/SnippetArticle;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetArticle;->d:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "{%s, %1.42s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
