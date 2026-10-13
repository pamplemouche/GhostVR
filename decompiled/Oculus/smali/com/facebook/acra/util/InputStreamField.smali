.class public Lcom/facebook/acra/util/InputStreamField;
.super Ljava/lang/Object;
.source "InputStreamField.java"


# instance fields
.field private mInputStream:Ljava/io/InputStream;

.field private mLength:J

.field private mSendAsAFile:Z

.field private mSendCompressed:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ZZJ)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/facebook/acra/util/InputStreamField;->mInputStream:Ljava/io/InputStream;

    .line 15
    iput-boolean p2, p0, Lcom/facebook/acra/util/InputStreamField;->mSendCompressed:Z

    .line 16
    iput-boolean p3, p0, Lcom/facebook/acra/util/InputStreamField;->mSendAsAFile:Z

    .line 17
    iput-wide p4, p0, Lcom/facebook/acra/util/InputStreamField;->mLength:J

    .line 18
    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/facebook/acra/util/InputStreamField;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/facebook/acra/util/InputStreamField;->mLength:J

    return-wide v0
.end method

.method public getSendAsFile()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/facebook/acra/util/InputStreamField;->mSendAsAFile:Z

    return v0
.end method

.method public getSendCompressed()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/facebook/acra/util/InputStreamField;->mSendCompressed:Z

    return v0
.end method
