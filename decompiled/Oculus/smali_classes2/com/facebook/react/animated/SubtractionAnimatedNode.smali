.class Lcom/facebook/react/animated/SubtractionAnimatedNode;
.super Lcom/facebook/react/animated/ValueAnimatedNode;
.source "SubtractionAnimatedNode.java"


# instance fields
.field private final mInputNodes:[I

.field private final mNativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V
    .locals 4

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/facebook/react/animated/ValueAnimatedNode;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/facebook/react/animated/SubtractionAnimatedNode;->mNativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    .line 25
    const-string v0, "input"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    .line 26
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/react/animated/SubtractionAnimatedNode;->mInputNodes:[I

    .line 27
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/facebook/react/animated/SubtractionAnimatedNode;->mInputNodes:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 28
    iget-object v2, p0, Lcom/facebook/react/animated/SubtractionAnimatedNode;->mInputNodes:[I

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    aput v3, v2, v0

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public update()V
    .locals 6

    .prologue
    .line 34
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/facebook/react/animated/SubtractionAnimatedNode;->mInputNodes:[I

    array-length v0, v0

    if-ge v2, v0, :cond_2

    .line 35
    iget-object v0, p0, Lcom/facebook/react/animated/SubtractionAnimatedNode;->mNativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    iget-object v1, p0, Lcom/facebook/react/animated/SubtractionAnimatedNode;->mInputNodes:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->getNodeById(I)Lcom/facebook/react/animated/AnimatedNode;

    move-result-object v1

    .line 36
    if-eqz v1, :cond_1

    instance-of v0, v1, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 37
    check-cast v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-virtual {v0}, Lcom/facebook/react/animated/ValueAnimatedNode;->getValue()D

    move-result-wide v4

    .line 38
    if-nez v2, :cond_0

    .line 39
    iput-wide v4, p0, Lcom/facebook/react/animated/SubtractionAnimatedNode;->mValue:D

    .line 34
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 42
    :cond_0
    iget-wide v4, p0, Lcom/facebook/react/animated/SubtractionAnimatedNode;->mValue:D

    check-cast v1, Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-virtual {v1}, Lcom/facebook/react/animated/ValueAnimatedNode;->getValue()D

    move-result-wide v0

    sub-double v0, v4, v0

    iput-wide v0, p0, Lcom/facebook/react/animated/SubtractionAnimatedNode;->mValue:D

    goto :goto_1

    .line 44
    :cond_1
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;

    const-string v1, "Illegal node ID set as an input for Animated.subtract node"

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_2
    return-void
.end method
