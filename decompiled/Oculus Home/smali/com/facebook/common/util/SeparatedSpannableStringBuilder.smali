.class public Lcom/facebook/common/util/SeparatedSpannableStringBuilder;
.super Landroid/text/SpannableStringBuilder;
.source "SeparatedSpannableStringBuilder.java"


# static fields
.field private static final BULLET_SEPARATOR_STRING:Ljava/lang/String; = "\u00a0\u00a0\u2022\u00a0\u00a0"


# instance fields
.field private mSeparator:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "\u00a0\u00a0\u2022\u00a0\u00a0"

    invoke-direct {p0, v0}, Lcom/facebook/common/util/SeparatedSpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "separator"    # Ljava/lang/CharSequence;

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/facebook/common/util/SeparatedSpannableStringBuilder;->mSeparator:Ljava/lang/CharSequence;

    .line 17
    return-void
.end method


# virtual methods
.method public bulletedAppend(Ljava/lang/CharSequence;)Lcom/facebook/common/util/SeparatedSpannableStringBuilder;
    .locals 2
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 30
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/common/util/SeparatedSpannableStringBuilder;->bulletedAppend(Ljava/lang/CharSequence;Ljava/lang/Object;I)Lcom/facebook/common/util/SeparatedSpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bulletedAppend(Ljava/lang/CharSequence;Ljava/lang/Object;I)Lcom/facebook/common/util/SeparatedSpannableStringBuilder;
    .locals 2
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "span"    # Ljava/lang/Object;
    .param p3, "flags"    # I

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/facebook/common/util/SeparatedSpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/facebook/common/util/SeparatedSpannableStringBuilder;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/facebook/common/util/SeparatedSpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/common/util/SeparatedSpannableStringBuilder;->length()I

    move-result v0

    .line 49
    .local v0, "priorLength":I
    invoke-virtual {p0, p1}, Lcom/facebook/common/util/SeparatedSpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 51
    if-eqz p2, :cond_1

    .line 52
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, p2, v0, v1, p3}, Lcom/facebook/common/util/SeparatedSpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 54
    :cond_1
    return-object p0
.end method
