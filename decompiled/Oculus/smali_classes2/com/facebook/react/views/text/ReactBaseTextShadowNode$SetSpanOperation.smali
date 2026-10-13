.class Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;
.super Ljava/lang/Object;
.source "ReactBaseTextShadowNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/text/ReactBaseTextShadowNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetSpanOperation"
.end annotation


# instance fields
.field protected end:I

.field protected start:I

.field protected what:Lcom/facebook/react/views/text/ReactSpan;


# direct methods
.method constructor <init>(IILcom/facebook/react/views/text/ReactSpan;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;->start:I

    .line 71
    iput p2, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;->end:I

    .line 72
    iput-object p3, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;->what:Lcom/facebook/react/views/text/ReactSpan;

    .line 73
    return-void
.end method


# virtual methods
.method public execute(Landroid/text/SpannableStringBuilder;I)V
    .locals 4

    .prologue
    .line 78
    const/16 v0, 0x22

    .line 79
    iget v1, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;->start:I

    if-nez v1, :cond_0

    .line 80
    const/16 v0, 0x12

    .line 83
    :cond_0
    const v1, -0xff0001

    and-int/2addr v0, v1

    .line 84
    shl-int/lit8 v1, p2, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 86
    iget-object v1, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;->what:Lcom/facebook/react/views/text/ReactSpan;

    iget v2, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;->start:I

    iget v3, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;->end:I

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 87
    return-void
.end method
