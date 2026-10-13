.class public Lcom/oculus/secure/trustedapp/CallerInfoHelper$CallerInfo;
.super Ljava/lang/Object;
.source "CallerInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/secure/trustedapp/CallerInfoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallerInfo"
.end annotation


# instance fields
.field public final callerDomain:Ljava/lang/String;

.field public final callerPackageName:Ljava/lang/String;

.field public final callerUid:I

.field public final isValid:Z


# direct methods
.method private constructor <init>(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "isValid"    # Z
    .param p2, "callerUid"    # I
    .param p3, "callerPackageName"    # Ljava/lang/String;
    .param p4, "callerDomain"    # Ljava/lang/String;

    .prologue
    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput-boolean p1, p0, Lcom/oculus/secure/trustedapp/CallerInfoHelper$CallerInfo;->isValid:Z

    .line 356
    iput p2, p0, Lcom/oculus/secure/trustedapp/CallerInfoHelper$CallerInfo;->callerUid:I

    .line 357
    iput-object p3, p0, Lcom/oculus/secure/trustedapp/CallerInfoHelper$CallerInfo;->callerPackageName:Ljava/lang/String;

    .line 358
    iput-object p4, p0, Lcom/oculus/secure/trustedapp/CallerInfoHelper$CallerInfo;->callerDomain:Ljava/lang/String;

    .line 359
    return-void
.end method

.method public static createInvalid(ILjava/lang/String;Ljava/lang/String;)Lcom/oculus/secure/trustedapp/CallerInfoHelper$CallerInfo;
    .locals 2
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;

    .prologue
    .line 368
    new-instance v0, Lcom/oculus/secure/trustedapp/CallerInfoHelper$CallerInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/oculus/secure/trustedapp/CallerInfoHelper$CallerInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createValid(ILjava/lang/String;Ljava/lang/String;)Lcom/oculus/secure/trustedapp/CallerInfoHelper$CallerInfo;
    .locals 2
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;

    .prologue
    .line 363
    new-instance v0, Lcom/oculus/secure/trustedapp/CallerInfoHelper$CallerInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/oculus/secure/trustedapp/CallerInfoHelper$CallerInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallerInfo={ isValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oculus/secure/trustedapp/CallerInfoHelper$CallerInfo;->isValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oculus/secure/trustedapp/CallerInfoHelper$CallerInfo;->callerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",callerPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/oculus/secure/trustedapp/CallerInfoHelper$CallerInfo;->callerPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",callerDomain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/secure/trustedapp/CallerInfoHelper$CallerInfo;->callerDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oculus/secure/trustedapp/CallerInfoHelper$CallerInfo;->callerPackageName:Ljava/lang/String;

    goto :goto_0
.end method
