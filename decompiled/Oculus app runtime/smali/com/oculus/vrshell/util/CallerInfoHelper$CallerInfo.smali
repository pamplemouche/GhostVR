.class public Lcom/oculus/vrshell/util/CallerInfoHelper$CallerInfo;
.super Ljava/lang/Object;
.source "CallerInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/util/CallerInfoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallerInfo"
.end annotation


# instance fields
.field public final callerDomain:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final callerPackageName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final callerUid:I

.field public final isValid:Z


# direct methods
.method private constructor <init>(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput-boolean p1, p0, Lcom/oculus/vrshell/util/CallerInfoHelper$CallerInfo;->isValid:Z

    .line 333
    iput p2, p0, Lcom/oculus/vrshell/util/CallerInfoHelper$CallerInfo;->callerUid:I

    .line 334
    iput-object p3, p0, Lcom/oculus/vrshell/util/CallerInfoHelper$CallerInfo;->callerPackageName:Ljava/lang/String;

    .line 335
    iput-object p4, p0, Lcom/oculus/vrshell/util/CallerInfoHelper$CallerInfo;->callerDomain:Ljava/lang/String;

    return-void
.end method

.method public static createInvalid(ILjava/lang/String;Ljava/lang/String;)Lcom/oculus/vrshell/util/CallerInfoHelper$CallerInfo;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 345
    new-instance v0, Lcom/oculus/vrshell/util/CallerInfoHelper$CallerInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/oculus/vrshell/util/CallerInfoHelper$CallerInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createValid(ILjava/lang/String;Ljava/lang/String;)Lcom/oculus/vrshell/util/CallerInfoHelper$CallerInfo;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 340
    new-instance v0, Lcom/oculus/vrshell/util/CallerInfoHelper$CallerInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/oculus/vrshell/util/CallerInfoHelper$CallerInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallerInfo={ isValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oculus/vrshell/util/CallerInfoHelper$CallerInfo;->isValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oculus/vrshell/util/CallerInfoHelper$CallerInfo;->callerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",callerPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/vrshell/util/CallerInfoHelper$CallerInfo;->callerPackageName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",callerDomain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/vrshell/util/CallerInfoHelper$CallerInfo;->callerDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
