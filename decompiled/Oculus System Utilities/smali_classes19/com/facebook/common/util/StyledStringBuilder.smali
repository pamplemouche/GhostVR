.class public Lcom/facebook/common/util/StyledStringBuilder;
.super Ljava/lang/Object;
.source "StyledStringBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/util/StyledStringBuilder$SpanStart;
    }
.end annotation


# instance fields
.field private final resources:Landroid/content/res/Resources;

.field private final sb:Landroid/text/SpannableStringBuilder;

.field private final stack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/facebook/common/util/StyledStringBuilder$SpanStart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 37
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/facebook/common/util/StyledStringBuilder;-><init>(Landroid/text/SpannableStringBuilder;Landroid/content/res/Resources;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/text/SpannableStringBuilder;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "spannableStringBuilder"    # Landroid/text/SpannableStringBuilder;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/common/util/StyledStringBuilder;->stack:Ljava/util/ArrayDeque;

    .line 46
    iput-object p1, p0, Lcom/facebook/common/util/StyledStringBuilder;->sb:Landroid/text/SpannableStringBuilder;

    .line 47
    iput-object p2, p0, Lcom/facebook/common/util/StyledStringBuilder;->resources:Landroid/content/res/Resources;

    .line 48
    return-void
.end method


# virtual methods
.method public append(I)Lcom/facebook/common/util/StyledStringBuilder;
    .locals 2
    .param p1, "resourceId"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/common/util/StyledStringBuilder;->sb:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/facebook/common/util/StyledStringBuilder;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 69
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lcom/facebook/common/util/StyledStringBuilder;
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/common/util/StyledStringBuilder;->sb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 58
    return-object p0
.end method

.method public endSpan()Lcom/facebook/common/util/StyledStringBuilder;
    .locals 6

    .prologue
    .line 91
    iget-object v1, p0, Lcom/facebook/common/util/StyledStringBuilder;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 92
    iget-object v1, p0, Lcom/facebook/common/util/StyledStringBuilder;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/util/StyledStringBuilder$SpanStart;

    .line 93
    .local v0, "start":Lcom/facebook/common/util/StyledStringBuilder$SpanStart;
    iget-object v1, p0, Lcom/facebook/common/util/StyledStringBuilder;->sb:Landroid/text/SpannableStringBuilder;

    iget-object v2, v0, Lcom/facebook/common/util/StyledStringBuilder$SpanStart;->span:Ljava/lang/Object;

    iget v3, v0, Lcom/facebook/common/util/StyledStringBuilder$SpanStart;->index:I

    iget-object v4, p0, Lcom/facebook/common/util/StyledStringBuilder;->sb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    iget v5, v0, Lcom/facebook/common/util/StyledStringBuilder$SpanStart;->flags:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 94
    return-object p0

    .line 91
    .end local v0    # "start":Lcom/facebook/common/util/StyledStringBuilder$SpanStart;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/facebook/common/util/StyledStringBuilder;->sb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public replaceToken(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/facebook/common/util/StyledStringBuilder;
    .locals 3
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "replacementText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 139
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, p2, v2, v0}, Lcom/facebook/common/util/StyledStringBuilder;->replaceToken(Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/Object;)Lcom/facebook/common/util/StyledStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs replaceToken(Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/Object;)Lcom/facebook/common/util/StyledStringBuilder;
    .locals 9
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "replacementText"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I
    .param p4, "spans"    # [Ljava/lang/Object;

    .prologue
    .line 116
    iget-object v5, p0, Lcom/facebook/common/util/StyledStringBuilder;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v5

    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 117
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 118
    .local v2, "pattern":Ljava/util/regex/Pattern;
    iget-object v5, p0, Lcom/facebook/common/util/StyledStringBuilder;->sb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 119
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 120
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    .line 121
    .local v4, "start":I
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 122
    .local v0, "end":I
    iget-object v5, p0, Lcom/facebook/common/util/StyledStringBuilder;->sb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v4, v0, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 123
    array-length v6, p4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v3, p4, v5

    .line 124
    .local v3, "span":Ljava/lang/Object;
    iget-object v7, p0, Lcom/facebook/common/util/StyledStringBuilder;->sb:Landroid/text/SpannableStringBuilder;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v7, v3, v4, v8, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 123
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 127
    .end local v0    # "end":I
    .end local v3    # "span":Ljava/lang/Object;
    .end local v4    # "start":I
    :cond_0
    return-object p0
.end method

.method public replaceToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Lcom/facebook/common/util/StyledStringBuilder;
    .locals 2
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "replacementText"    # Ljava/lang/String;
    .param p3, "span"    # Ljava/lang/Object;
    .param p4, "flags"    # I

    .prologue
    .line 110
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-virtual {p0, p1, p2, p4, v0}, Lcom/facebook/common/util/StyledStringBuilder;->replaceToken(Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/Object;)Lcom/facebook/common/util/StyledStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public startSpan(Ljava/lang/Object;I)Lcom/facebook/common/util/StyledStringBuilder;
    .locals 3
    .param p1, "span"    # Ljava/lang/Object;
    .param p2, "flags"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/common/util/StyledStringBuilder;->stack:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/facebook/common/util/StyledStringBuilder$SpanStart;

    iget-object v2, p0, Lcom/facebook/common/util/StyledStringBuilder;->sb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-direct {v1, v2, p1, p2}, Lcom/facebook/common/util/StyledStringBuilder$SpanStart;-><init>(ILjava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 82
    return-object p0
.end method

.method public toSpannableString()Landroid/text/SpannableString;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/facebook/common/util/StyledStringBuilder;->sb:Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method
