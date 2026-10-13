.class Lcom/facebook/systrace/SystraceMessage$ArgsList;
.super Ljava/lang/Object;
.source "SystraceMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/systrace/SystraceMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArgsList"
.end annotation


# static fields
.field private static final DEFAULT_CAPACITY:I = 0xa


# instance fields
.field private mData:[Ljava/lang/String;

.field private mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/systrace/SystraceMessage$ArgsList;->mData:[Ljava/lang/String;

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/systrace/SystraceMessage$ArgsList;->mSize:I

    .line 161
    return-void
.end method

.method static synthetic access$400(Lcom/facebook/systrace/SystraceMessage$ArgsList;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/systrace/SystraceMessage$ArgsList;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/facebook/systrace/SystraceMessage$ArgsList;->mData:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/systrace/SystraceMessage$ArgsList;)I
    .locals 1
    .param p0, "x0"    # Lcom/facebook/systrace/SystraceMessage$ArgsList;

    .prologue
    .line 152
    iget v0, p0, Lcom/facebook/systrace/SystraceMessage$ArgsList;->mSize:I

    return v0
.end method

.method private grow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 179
    iget-object v0, p0, Lcom/facebook/systrace/SystraceMessage$ArgsList;->mData:[Ljava/lang/String;

    .line 180
    .local v0, "oldArray":[Ljava/lang/String;
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/facebook/systrace/SystraceMessage$ArgsList;->mData:[Ljava/lang/String;

    .line 181
    iget-object v1, p0, Lcom/facebook/systrace/SystraceMessage$ArgsList;->mData:[Ljava/lang/String;

    iget v2, p0, Lcom/facebook/systrace/SystraceMessage$ArgsList;->mSize:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/facebook/systrace/SystraceMessage$ArgsList;->mData:[Ljava/lang/String;

    array-length v0, v0

    iget v1, p0, Lcom/facebook/systrace/SystraceMessage$ArgsList;->mSize:I

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/facebook/systrace/SystraceMessage$ArgsList;->grow()V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/facebook/systrace/SystraceMessage$ArgsList;->mData:[Ljava/lang/String;

    iget v1, p0, Lcom/facebook/systrace/SystraceMessage$ArgsList;->mSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/facebook/systrace/SystraceMessage$ArgsList;->mSize:I

    aput-object p1, v0, v1

    .line 168
    iget-object v0, p0, Lcom/facebook/systrace/SystraceMessage$ArgsList;->mData:[Ljava/lang/String;

    iget v1, p0, Lcom/facebook/systrace/SystraceMessage$ArgsList;->mSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/facebook/systrace/SystraceMessage$ArgsList;->mSize:I

    aput-object p2, v0, v1

    .line 169
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 172
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/facebook/systrace/SystraceMessage$ArgsList;->mSize:I

    if-ge v0, v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/facebook/systrace/SystraceMessage$ArgsList;->mData:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/systrace/SystraceMessage$ArgsList;->mSize:I

    .line 176
    return-void
.end method
