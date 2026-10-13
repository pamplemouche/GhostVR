.class public Lcom/facebook/debug/tracer/LongStack;
.super Ljava/lang/Object;
.source "LongStack.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private top:I

.field private vector:[J


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/debug/tracer/LongStack;->top:I

    .line 18
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/facebook/debug/tracer/LongStack;->vector:[J

    .line 19
    return-void
.end method

.method private grow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 41
    iget-object v1, p0, Lcom/facebook/debug/tracer/LongStack;->vector:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [J

    .line 42
    .local v0, "newVector":[J
    iget-object v1, p0, Lcom/facebook/debug/tracer/LongStack;->vector:[J

    iget-object v2, p0, Lcom/facebook/debug/tracer/LongStack;->vector:[J

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iput-object v0, p0, Lcom/facebook/debug/tracer/LongStack;->vector:[J

    .line 44
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/debug/tracer/LongStack;->top:I

    .line 52
    return-void
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 22
    iget v0, p0, Lcom/facebook/debug/tracer/LongStack;->top:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public peek()J
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/debug/tracer/LongStack;->vector:[J

    iget v1, p0, Lcom/facebook/debug/tracer/LongStack;->top:I

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public pop()J
    .locals 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/debug/tracer/LongStack;->vector:[J

    iget v1, p0, Lcom/facebook/debug/tracer/LongStack;->top:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/facebook/debug/tracer/LongStack;->top:I

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public push(J)V
    .locals 3
    .param p1, "pushed"    # J

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/debug/tracer/LongStack;->vector:[J

    array-length v0, v0

    iget v1, p0, Lcom/facebook/debug/tracer/LongStack;->top:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_0

    .line 35
    invoke-direct {p0}, Lcom/facebook/debug/tracer/LongStack;->grow()V

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/facebook/debug/tracer/LongStack;->vector:[J

    iget v1, p0, Lcom/facebook/debug/tracer/LongStack;->top:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/facebook/debug/tracer/LongStack;->top:I

    aput-wide p1, v0, v1

    .line 38
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/facebook/debug/tracer/LongStack;->top:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "<LongStack vector:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/facebook/debug/tracer/LongStack;->vector:[J

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 59
    if-eqz v0, :cond_0

    .line 60
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :cond_0
    iget v2, p0, Lcom/facebook/debug/tracer/LongStack;->top:I

    if-ne v0, v2, :cond_1

    .line 64
    const-string v2, ">>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :cond_1
    iget-object v2, p0, Lcom/facebook/debug/tracer/LongStack;->vector:[J

    aget-wide v2, v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    iget v2, p0, Lcom/facebook/debug/tracer/LongStack;->top:I

    if-ne v0, v2, :cond_2

    .line 70
    const-string v2, "<<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_3
    const-string v2, "]>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
