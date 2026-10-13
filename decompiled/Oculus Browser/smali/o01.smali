.class public Lo01;
.super LkW;
.source "PG"


# instance fields
.field public final a:Landroid/view/textclassifier/TextClassifier;

.field public final b:I

.field public final c:Ljava/lang/CharSequence;

.field public final d:I

.field public final e:I

.field public final synthetic f:Lp01;


# direct methods
.method public constructor <init>(Lp01;Landroid/view/textclassifier/TextClassifier;ILjava/lang/CharSequence;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo01;->f:Lp01;

    invoke-direct {p0}, LkW;-><init>()V

    .line 2
    iput-object p2, p0, Lo01;->a:Landroid/view/textclassifier/TextClassifier;

    .line 3
    iput p3, p0, Lo01;->b:I

    .line 4
    iput-object p4, p0, Lo01;->c:Ljava/lang/CharSequence;

    .line 5
    iput p5, p0, Lo01;->d:I

    .line 6
    iput p6, p0, Lo01;->e:I

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lo01;->d:I

    .line 2
    iget v1, p0, Lo01;->e:I

    .line 3
    iget v2, p0, Lo01;->b:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 4
    iget-object v2, p0, Lo01;->a:Landroid/view/textclassifier/TextClassifier;

    iget-object v3, p0, Lo01;->c:Ljava/lang/CharSequence;

    .line 5
    invoke-static {}, Landroid/os/LocaleList;->getAdjustedDefault()Landroid/os/LocaleList;

    move-result-object v4

    .line 6
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/view/textclassifier/TextClassifier;->suggestSelection(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection;->getSelectionStartIndex()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 8
    iget-object v2, p0, Lo01;->c:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection;->getSelectionEndIndex()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 9
    invoke-virtual {p0}, LkW;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, LT01;

    invoke-direct {v0}, LT01;-><init>()V

    goto :goto_1

    :cond_0
    move v6, v2

    move-object v2, v0

    move v0, v1

    move v1, v6

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 10
    :goto_0
    iget-object v3, p0, Lo01;->a:Landroid/view/textclassifier/TextClassifier;

    iget-object v4, p0, Lo01;->c:Ljava/lang/CharSequence;

    .line 11
    invoke-static {}, Landroid/os/LocaleList;->getAdjustedDefault()Landroid/os/LocaleList;

    move-result-object v5

    .line 12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/view/textclassifier/TextClassifier;->classifyText(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification;

    move-result-object v3

    .line 13
    new-instance v4, LT01;

    invoke-direct {v4}, LT01;-><init>()V

    .line 14
    iget v5, p0, Lo01;->d:I

    sub-int/2addr v0, v5

    iput v0, v4, LT01;->a:I

    .line 15
    iget v0, p0, Lo01;->e:I

    sub-int/2addr v1, v0

    iput v1, v4, LT01;->b:I

    .line 16
    invoke-virtual {v3}, Landroid/view/textclassifier/TextClassification;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v4, LT01;->c:Ljava/lang/CharSequence;

    .line 17
    invoke-virtual {v3}, Landroid/view/textclassifier/TextClassification;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v4, LT01;->d:Landroid/graphics/drawable/Drawable;

    .line 18
    invoke-virtual {v3}, Landroid/view/textclassifier/TextClassification;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, v4, LT01;->e:Landroid/content/Intent;

    .line 19
    invoke-virtual {v3}, Landroid/view/textclassifier/TextClassification;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, v4, LT01;->f:Landroid/view/View$OnClickListener;

    .line 20
    iput-object v2, v4, LT01;->h:Landroid/view/textclassifier/TextSelection;

    .line 21
    iput-object v3, v4, LT01;->g:Landroid/view/textclassifier/TextClassification;

    move-object v0, v4

    :goto_1
    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, LT01;

    .line 2
    iget-object v0, p0, Lo01;->f:Lp01;

    .line 3
    iget-object v0, v0, Lp01;->a:LU01;

    .line 4
    check-cast v0, Li01;

    invoke-virtual {v0, p1}, Li01;->a(LT01;)V

    return-void
.end method
