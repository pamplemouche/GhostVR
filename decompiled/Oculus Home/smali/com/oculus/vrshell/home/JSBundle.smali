.class public Lcom/oculus/vrshell/home/JSBundle;
.super Ljava/lang/Object;
.source "JSBundle.java"


# instance fields
.field private final mChecksum:Ljava/lang/String;

.field private final mFileName:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "checksum"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/oculus/vrshell/home/JSBundle;->mFileName:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/oculus/vrshell/home/JSBundle;->mUrl:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/oculus/vrshell/home/JSBundle;->mChecksum:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getChecksum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oculus/vrshell/home/JSBundle;->mChecksum:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oculus/vrshell/home/JSBundle;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oculus/vrshell/home/JSBundle;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 31
    const-string v0, "JSBundle{fileName: %s, url: %s, checksum: %s}"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oculus/vrshell/home/JSBundle;->mFileName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/oculus/vrshell/home/JSBundle;->mUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/oculus/vrshell/home/JSBundle;->mChecksum:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
