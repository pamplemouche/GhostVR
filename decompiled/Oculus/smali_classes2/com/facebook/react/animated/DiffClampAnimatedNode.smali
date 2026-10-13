.class Lcom/facebook/react/animated/DiffClampAnimatedNode;
.super Lcom/facebook/react/animated/ValueAnimatedNode;
.source "DiffClampAnimatedNode.java"


# instance fields
.field private final mInputNodeTag:I

.field private mLastValue:D

.field private final mMax:D

.field private final mMin:D

.field private final mNativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/facebook/react/animated/ValueAnimatedNode;-><init>()V

    .line 22
    iput-object p2, p0, Lcom/facebook/react/animated/DiffClampAnimatedNode;->mNativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    .line 23
    const-string v0, "input"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/react/animated/DiffClampAnimatedNode;->mInputNodeTag:I

    .line 24
    const-string v0, "min"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/react/animated/DiffClampAnimatedNode;->mMin:D

    .line 25
    const-string v0, "max"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/react/animated/DiffClampAnimatedNode;->mMax:D

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/react/animated/DiffClampAnimatedNode;->mLastValue:D

    iput-wide v0, p0, Lcom/facebook/react/animated/DiffClampAnimatedNode;->mValue:D

    .line 28
    return-void
.end method

.method private getInputNodeValue()D
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/react/animated/DiffClampAnimatedNode;->mNativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    iget v1, p0, Lcom/facebook/react/animated/DiffClampAnimatedNode;->mInputNodeTag:I

    invoke-virtual {v0, v1}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->getNodeById(I)Lcom/facebook/react/animated/AnimatedNode;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-nez v1, :cond_1

    .line 42
    :cond_0
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;

    const-string v1, "Illegal node ID set as an input for Animated.DiffClamp node"

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_1
    check-cast v0, Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-virtual {v0}, Lcom/facebook/react/animated/ValueAnimatedNode;->getValue()D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public update()V
    .locals 4

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/facebook/react/animated/DiffClampAnimatedNode;->getInputNodeValue()D

    move-result-wide v0

    .line 34
    iget-wide v2, p0, Lcom/facebook/react/animated/DiffClampAnimatedNode;->mLastValue:D

    sub-double v2, v0, v2

    .line 35
    iput-wide v0, p0, Lcom/facebook/react/animated/DiffClampAnimatedNode;->mLastValue:D

    .line 36
    iget-wide v0, p0, Lcom/facebook/react/animated/DiffClampAnimatedNode;->mValue:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/facebook/react/animated/DiffClampAnimatedNode;->mMin:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/react/animated/DiffClampAnimatedNode;->mMax:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/react/animated/DiffClampAnimatedNode;->mValue:D

    .line 37
    return-void
.end method
