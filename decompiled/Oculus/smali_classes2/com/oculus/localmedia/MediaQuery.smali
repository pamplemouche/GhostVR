.class public Lcom/oculus/localmedia/MediaQuery;
.super Ljava/lang/Object;
.source "MediaQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/localmedia/MediaQuery$Builder;
    }
.end annotation


# instance fields
.field public Cursor:Ljava/lang/String;

.field public DepthLevel:I

.field public DeviceId:I

.field public IsSortAscending:Z

.field public MediaId:I

.field public Path:Ljava/lang/String;

.field public Size:I

.field public Sort:Lcom/oculus/localmedia/MediaSort;

.field public Types:I


# direct methods
.method private constructor <init>(ILjava/lang/String;ILjava/lang/String;Lcom/oculus/localmedia/MediaSort;ZIII)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/oculus/localmedia/MediaQuery;->Types:I

    .line 31
    iput p3, p0, Lcom/oculus/localmedia/MediaQuery;->Size:I

    .line 32
    iput-object p4, p0, Lcom/oculus/localmedia/MediaQuery;->Cursor:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcom/oculus/localmedia/MediaQuery;->Sort:Lcom/oculus/localmedia/MediaSort;

    .line 34
    iput-boolean p6, p0, Lcom/oculus/localmedia/MediaQuery;->IsSortAscending:Z

    .line 35
    iput p7, p0, Lcom/oculus/localmedia/MediaQuery;->DepthLevel:I

    .line 36
    iput p9, p0, Lcom/oculus/localmedia/MediaQuery;->DeviceId:I

    .line 37
    iput p8, p0, Lcom/oculus/localmedia/MediaQuery;->MediaId:I

    .line 38
    iget v0, p0, Lcom/oculus/localmedia/MediaQuery;->DeviceId:I

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/oculus/localmedia/MediaQueryUtils;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lcom/oculus/localmedia/MediaQuery;->Path:Ljava/lang/String;

    .line 39
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;ILjava/lang/String;Lcom/oculus/localmedia/MediaSort;ZIIILcom/oculus/localmedia/MediaQuery$1;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p9}, Lcom/oculus/localmedia/MediaQuery;-><init>(ILjava/lang/String;ILjava/lang/String;Lcom/oculus/localmedia/MediaSort;ZIII)V

    return-void
.end method

.method public static builder()Lcom/oculus/localmedia/MediaQuery$Builder;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/oculus/localmedia/MediaQuery$Builder;

    invoke-direct {v0}, Lcom/oculus/localmedia/MediaQuery$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaQuery{Type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oculus/localmedia/MediaQuery;->Types:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oculus/localmedia/MediaQuery;->Size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Cursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/localmedia/MediaQuery;->Cursor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Sort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/localmedia/MediaQuery;->Sort:Lcom/oculus/localmedia/MediaSort;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", IsSortAscending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oculus/localmedia/MediaQuery;->IsSortAscending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Path=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/localmedia/MediaQuery;->Path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", DepthLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oculus/localmedia/MediaQuery;->DepthLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", DeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oculus/localmedia/MediaQuery;->DeviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", MediaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oculus/localmedia/MediaQuery;->MediaId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
