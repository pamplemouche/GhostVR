.class public Lcom/oculus/localmedia/metadata/FilenameMetadata;
.super Ljava/lang/Object;
.source "FilenameMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;
    }
.end annotation


# instance fields
.field private mFormat:Ljava/lang/String;

.field private mFovX:F

.field private mIsCardboard:Z

.field private mPresentationFormat:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FZ)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "presentationFormat"    # Ljava/lang/String;
    .param p4, "fovX"    # F
    .param p5, "isCardboard"    # Z

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/oculus/localmedia/metadata/FilenameMetadata;->mTitle:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/oculus/localmedia/metadata/FilenameMetadata;->mFormat:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/oculus/localmedia/metadata/FilenameMetadata;->mPresentationFormat:Ljava/lang/String;

    .line 41
    iput p4, p0, Lcom/oculus/localmedia/metadata/FilenameMetadata;->mFovX:F

    .line 42
    iput-boolean p5, p0, Lcom/oculus/localmedia/metadata/FilenameMetadata;->mIsCardboard:Z

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FZLcom/oculus/localmedia/metadata/FilenameMetadata$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # F
    .param p5, "x4"    # Z
    .param p6, "x5"    # Lcom/oculus/localmedia/metadata/FilenameMetadata$1;

    .prologue
    .line 9
    invoke-direct/range {p0 .. p5}, Lcom/oculus/localmedia/metadata/FilenameMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FZ)V

    return-void
.end method

.method public static builder()Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;

    invoke-direct {v0}, Lcom/oculus/localmedia/metadata/FilenameMetadata$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/oculus/localmedia/metadata/FilenameMetadata;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getFovX()F
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/oculus/localmedia/metadata/FilenameMetadata;->mFovX:F

    return v0
.end method

.method public getPresentationFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/localmedia/metadata/FilenameMetadata;->mPresentationFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/oculus/localmedia/metadata/FilenameMetadata;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isCardboard()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/oculus/localmedia/metadata/FilenameMetadata;->mIsCardboard:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FilenameMetadata{mTitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/localmedia/metadata/FilenameMetadata;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFormat=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/localmedia/metadata/FilenameMetadata;->mFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPresentationFormat=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/localmedia/metadata/FilenameMetadata;->mPresentationFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFovX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oculus/localmedia/metadata/FilenameMetadata;->mFovX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsCardboard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oculus/localmedia/metadata/FilenameMetadata;->mIsCardboard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
