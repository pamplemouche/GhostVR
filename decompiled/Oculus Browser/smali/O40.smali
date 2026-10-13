.class public LO40;
.super LQ40;
.source "PG"


# static fields
.field public static final e:Ljava/util/HashSet;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-string v4, "fr"

    const-string v5, "it"

    const-string v0, "es"

    const-string v1, "en"

    const-string v2, "pt"

    const-string v3, "ru"

    .line 1
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, LsT;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, LO40;->e:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;)V
    .locals 9

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, LP40;->a(I)Z

    move-result v0

    .line 2
    invoke-direct {p0}, LQ40;-><init>()V

    .line 3
    iput-boolean v0, p0, LO40;->a:Z

    .line 4
    sget-object v0, LO40;->e:Ljava/util/HashSet;

    .line 5
    iget-object v1, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->f:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 6
    iget-wide v1, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->a:J

    .line 7
    invoke-static {v1, v2, p1}, LJ/N;->Mi_5NNCP(JLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 8
    iput-object v1, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->f:Ljava/lang/String;

    .line 9
    :cond_0
    iget-object v1, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->f:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 11
    iput-boolean v0, p0, LO40;->c:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->j:Ljava/lang/String;

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 14
    invoke-virtual {p0, v0}, LO40;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 15
    :cond_1
    iget v6, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->k:I

    .line 16
    iget-object v7, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->o:Ljava/lang/String;

    .line 17
    iget v8, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->p:I

    move-object v3, p0

    move-object v4, p1

    move-object v5, v0

    .line 18
    invoke-virtual/range {v3 .. v8}, LO40;->a(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    .line 19
    :cond_2
    iget-object v5, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->m:Ljava/lang/String;

    .line 20
    iget v6, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->n:I

    .line 21
    iget v8, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->k:I

    move-object v3, p0

    move-object v4, p1

    move-object v7, v0

    .line 22
    invoke-virtual/range {v3 .. v8}, LO40;->a(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;Ljava/lang/String;ILjava/lang/String;I)Z

    move-result p1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    const/4 v1, 0x1

    .line 23
    :cond_4
    iput-boolean v1, p0, LO40;->d:Z

    xor-int/lit8 p1, v1, 0x1

    .line 24
    iput-boolean p1, p0, LO40;->b:Z

    return-void
.end method


# virtual methods
.method public a(LW40;)V
    .locals 2

    .line 2
    iget-boolean v0, p0, LO40;->d:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    check-cast p1, Lk50;

    const/16 v1, 0x10

    invoke-virtual {p1, v1, v0}, Lk50;->a(ILjava/lang/Object;)V

    .line 3
    iget-boolean v0, p0, LO40;->c:Z

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x15

    .line 5
    invoke-virtual {p1, v1, v0}, Lk50;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LO40;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LO40;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 3

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public final a(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;I)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 16
    :cond_0
    iget-object p1, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->c:Ljava/lang/String;

    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p1

    return p1
.end method

.method public final a(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 3

    .line 6
    invoke-virtual {p0, p2}, LO40;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p4}, LO40;->a(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_0

    goto :goto_4

    :cond_0
    add-int/lit8 p4, p3, -0x1

    :goto_0
    if-lez p4, :cond_1

    .line 7
    invoke-virtual {p0, p1, p4}, LO40;->a(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;I)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-lez p4, :cond_4

    .line 8
    iget-object v2, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {v2, p4}, Ljava/lang/String;->charAt(I)C

    move-result p4

    const/16 v2, 0x2e

    if-eq p4, v2, :cond_3

    const/16 v2, 0x3f

    if-eq p4, v2, :cond_3

    const/16 v2, 0x21

    if-eq p4, v2, :cond_3

    const/16 v2, 0x3a

    if-ne p4, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p4, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p4, 0x1

    :goto_2
    if-nez p4, :cond_4

    const/4 p4, 0x1

    goto :goto_3

    :cond_4
    const/4 p4, 0x0

    :goto_3
    if-nez p4, :cond_5

    return v1

    .line 10
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p3

    add-int/2addr p2, v0

    if-eq p2, p5, :cond_6

    return v1

    :cond_6
    sub-int/2addr p5, v0

    .line 11
    invoke-virtual {p0, p1, p5}, LO40;->a(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;I)Z

    move-result p1

    return p1

    :cond_7
    :goto_4
    return v1
.end method
