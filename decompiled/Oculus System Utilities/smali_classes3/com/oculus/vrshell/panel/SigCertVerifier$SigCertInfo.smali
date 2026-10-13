.class public Lcom/oculus/vrshell/panel/SigCertVerifier$SigCertInfo;
.super Ljava/lang/Object;
.source "SigCertVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/panel/SigCertVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SigCertInfo"
.end annotation


# instance fields
.field public final isTrusted:Z

.field public final packageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final signature:Landroid/content/pm/Signature;


# direct methods
.method private constructor <init>(ZLandroid/content/pm/Signature;Ljava/util/Set;)V
    .locals 1
    .param p1, "isTrusted"    # Z
    .param p2, "signature"    # Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/pm/Signature;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p3, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-boolean p1, p0, Lcom/oculus/vrshell/panel/SigCertVerifier$SigCertInfo;->isTrusted:Z

    .line 294
    iput-object p2, p0, Lcom/oculus/vrshell/panel/SigCertVerifier$SigCertInfo;->signature:Landroid/content/pm/Signature;

    .line 295
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/vrshell/panel/SigCertVerifier$SigCertInfo;->packageNames:Ljava/util/Set;

    .line 296
    return-void
.end method

.method public static createTrusted(Landroid/content/pm/Signature;Ljava/util/Set;)Lcom/oculus/vrshell/panel/SigCertVerifier$SigCertInfo;
    .locals 2
    .param p0, "signature"    # Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/Signature;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/oculus/vrshell/panel/SigCertVerifier$SigCertInfo;"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lcom/oculus/vrshell/panel/SigCertVerifier$SigCertInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/oculus/vrshell/panel/SigCertVerifier$SigCertInfo;-><init>(ZLandroid/content/pm/Signature;Ljava/util/Set;)V

    return-object v0
.end method

.method public static createUntrusted(Landroid/content/pm/Signature;Ljava/util/Set;)Lcom/oculus/vrshell/panel/SigCertVerifier$SigCertInfo;
    .locals 2
    .param p0, "signature"    # Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/Signature;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/oculus/vrshell/panel/SigCertVerifier$SigCertInfo;"
        }
    .end annotation

    .prologue
    .line 305
    .local p1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lcom/oculus/vrshell/panel/SigCertVerifier$SigCertInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/oculus/vrshell/panel/SigCertVerifier$SigCertInfo;-><init>(ZLandroid/content/pm/Signature;Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SigCertInfo("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "isTrusted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    iget-boolean v3, p0, Lcom/oculus/vrshell/panel/SigCertVerifier$SigCertInfo;->isTrusted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 314
    const-string v3, ", packageNames=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, "cnt":I
    iget-object v3, p0, Lcom/oculus/vrshell/panel/SigCertVerifier$SigCertInfo;->packageNames:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 318
    .local v1, "pn":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x1

    if-le v0, v4, :cond_0

    .line 320
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 325
    .end local v1    # "pn":Ljava/lang/String;
    :cond_1
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    const-string v3, ", signature="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    iget-object v3, p0, Lcom/oculus/vrshell/panel/SigCertVerifier$SigCertInfo;->signature:Landroid/content/pm/Signature;

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
