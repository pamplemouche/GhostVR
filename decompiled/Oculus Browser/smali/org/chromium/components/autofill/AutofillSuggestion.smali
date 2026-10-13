.class public Lorg/chromium/components/autofill/AutofillSuggestion;
.super Lfc1;
.source "PG"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Z

.field public final e:I

.field public final f:Z

.field public final g:Z

.field public final h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZIZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfc1;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->b:Ljava/lang/String;

    .line 4
    iput p3, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->c:I

    .line 5
    iput-boolean p4, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->d:Z

    .line 6
    iput p5, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->e:I

    .line 7
    iput-boolean p6, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->f:Z

    .line 8
    iput-boolean p7, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->g:Z

    .line 9
    iput-boolean p8, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->h:Z

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->g:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->h:Z

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f0600eb

    return v0

    :cond_0
    const v0, 0x7f060094

    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->c:I

    return v0
.end method
