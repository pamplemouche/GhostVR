.class public Lcom/facebook/common/util/SpannableStringSubstitution;
.super Ljava/lang/Object;
.source "SpannableStringSubstitution.java"


# instance fields
.field public final span:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final spanFlags:I

.field public final substitutionText:Ljava/lang/Object;

.field public final substitutionTextResId:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "substitutionTextResId"    # I

    .prologue
    const/4 v1, 0x0

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v1, p1, v1, v0}, Lcom/facebook/common/util/SpannableStringSubstitution;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;I)V
    .locals 1
    .param p1, "substitutionTextResId"    # I
    .param p2, "span"    # Ljava/lang/Object;
    .param p3, "spanFlags"    # I

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/facebook/common/util/SpannableStringSubstitution;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "substitutionText"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/facebook/common/util/SpannableStringSubstitution;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 30
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 1
    .param p1, "substitutionText"    # Ljava/lang/Object;
    .param p2, "substitutionTextResId"    # I
    .param p3, "span"    # Ljava/lang/Object;
    .param p4, "spanFlags"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 50
    iput-object p1, p0, Lcom/facebook/common/util/SpannableStringSubstitution;->substitutionText:Ljava/lang/Object;

    .line 51
    iput p2, p0, Lcom/facebook/common/util/SpannableStringSubstitution;->substitutionTextResId:I

    .line 52
    iput-object p3, p0, Lcom/facebook/common/util/SpannableStringSubstitution;->span:Ljava/lang/Object;

    .line 53
    iput p4, p0, Lcom/facebook/common/util/SpannableStringSubstitution;->spanFlags:I

    .line 54
    return-void

    .line 49
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "substitutionText"    # Ljava/lang/Object;
    .param p2, "span"    # Ljava/lang/Object;
    .param p3, "spanFlags"    # I

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/facebook/common/util/SpannableStringSubstitution;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 40
    return-void
.end method
