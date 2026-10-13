.class public abstract Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:J

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:I

.field public l:I

.field public m:Ljava/lang/String;

.field public n:I

.field public o:Ljava/lang/String;

.field public p:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->d:I

    .line 3
    iput v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->e:I

    .line 4
    iput v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->g:I

    .line 5
    iput v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->k:I

    .line 6
    iput v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->l:I

    .line 7
    iput v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->n:I

    .line 8
    iput v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->p:I

    .line 9
    invoke-static {p0}, LJ/N;->Mz21Bkwn(Ljava/lang/Object;)J

    move-result-wide v0

    .line 10
    iput-wide v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->a:J

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->b:Z

    return-void
.end method

.method private getNativePointer()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->a:J

    return-wide v0
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .line 46
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 47
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public a()V
    .locals 2

    .line 4
    iget-wide v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->a:J

    .line 5
    invoke-static {v0, v1, p0}, LJ/N;->MwvXsCJZ(JLjava/lang/Object;)V

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->a:J

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->c:Ljava/lang/String;

    return-void
.end method

.method public a(II)V
    .locals 2

    .line 40
    iget v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->d:I

    .line 41
    iget v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->e:I

    add-int/2addr v0, p2

    iput v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->e:I

    .line 42
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->d()V

    .line 43
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->getNativePointer()J

    move-result-wide v0

    .line 44
    invoke-static {v0, v1, p0, p1, p2}, LJ/N;->M2pdefbB(JLjava/lang/Object;II)V

    .line 45
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->c()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 6

    .line 8
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->i:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->c:Ljava/lang/String;

    .line 10
    iput p3, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->d:I

    .line 11
    iput p4, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->e:I

    if-ne p3, p4, :cond_8

    .line 12
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-gt p3, p1, :cond_8

    .line 13
    iget p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->g:I

    const/4 p2, 0x1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_8

    .line 14
    iput p3, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->g:I

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->j:Ljava/lang/String;

    const/4 p1, -0x1

    .line 16
    iput p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->l:I

    .line 17
    invoke-virtual {p0, p3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->b(I)I

    move-result v0

    .line 18
    iget v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->g:I

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->a(I)I

    move-result v1

    if-eq v0, p1, :cond_8

    if-ne v1, p1, :cond_1

    goto :goto_4

    .line 19
    :cond_1
    iput v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->k:I

    .line 20
    iget-object v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->j:Ljava/lang/String;

    .line 21
    iget v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->g:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->l:I

    .line 22
    iget v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->k:I

    :goto_1
    if-lt v0, p2, :cond_2

    add-int/lit8 v1, v0, -0x1

    .line 23
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->c(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    goto :goto_2

    .line 24
    :cond_3
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->b(I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->n:I

    if-ne v1, p1, :cond_4

    goto :goto_2

    .line 25
    :cond_4
    iget-object v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->c:Ljava/lang/String;

    .line 26
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->m:Ljava/lang/String;

    .line 27
    :goto_2
    iget v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->k:I

    .line 28
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    :goto_3
    add-int/2addr v1, p2

    .line 29
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 30
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->c(I)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    .line 31
    :cond_5
    iget-object p2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->c:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-ne v1, p2, :cond_6

    goto :goto_4

    .line 32
    :cond_6
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->a(I)I

    move-result p2

    if-ne p2, p1, :cond_7

    goto :goto_4

    .line 33
    :cond_7
    iput v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->p:I

    .line 34
    iget-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->c:Ljava/lang/String;

    .line 35
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->o:Ljava/lang/String;

    :cond_8
    :goto_4
    if-le p4, p3, :cond_9

    .line 36
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->d()V

    .line 37
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->c()V

    :cond_9
    if-eqz p5, :cond_a

    .line 38
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->getNativePointer()J

    move-result-wide v0

    iget-object v3, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->c:Ljava/lang/String;

    iget v4, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->d:I

    iget v5, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->e:I

    move-object v2, p0

    .line 39
    invoke-static/range {v0 .. v5}, LJ/N;->MLop_YCM(JLjava/lang/Object;Ljava/lang/String;II)V

    :cond_a
    return-void
.end method

.method public a(Ljava/lang/String;ZJI)V
    .locals 9

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->b:Z

    .line 2
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->getNativePointer()J

    move-result-wide v1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    move v8, p5

    .line 3
    invoke-static/range {v1 .. v8}, LJ/N;->MjXeVW3V(JLjava/lang/Object;Ljava/lang/String;ZJI)V

    return-void
.end method

.method public final b(I)I
    .locals 1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->e:I

    if-eq v2, v1, :cond_0

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract c()V
.end method

.method public final c(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0xad

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->e:I

    iget v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->d:I

    if-lt v0, v1, :cond_1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->c:Ljava/lang/String;

    iget v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->d:I

    iget v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->e:I

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchContext;->h:Ljava/lang/String;

    nop

    :cond_1
    :goto_0
    return-void
.end method
