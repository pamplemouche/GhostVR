.class Lcom/facebook/common/util/StyledStringBuilder$SpanStart;
.super Ljava/lang/Object;
.source "StyledStringBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/util/StyledStringBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpanStart"
.end annotation


# instance fields
.field final flags:I

.field final index:I

.field final span:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;I)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "span"    # Ljava/lang/Object;
    .param p3, "flags"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/facebook/common/util/StyledStringBuilder$SpanStart;->index:I

    .line 27
    iput-object p2, p0, Lcom/facebook/common/util/StyledStringBuilder$SpanStart;->span:Ljava/lang/Object;

    .line 28
    iput p3, p0, Lcom/facebook/common/util/StyledStringBuilder$SpanStart;->flags:I

    .line 29
    return-void
.end method
