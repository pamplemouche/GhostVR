.class public Lcom/oculus/vrshell/panelservice/SigCertVerifier$SigCertInfo;
.super Ljava/lang/Object;
.source "SigCertVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/panelservice/SigCertVerifier;
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
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final signature:Landroid/content/pm/Signature;


# direct methods
.method private constructor <init>(ZLandroid/content/pm/Signature;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/pm/Signature;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-boolean p1, p0, Lcom/oculus/vrshell/panelservice/SigCertVerifier$SigCertInfo;->isTrusted:Z

    .line 227
    iput-object p2, p0, Lcom/oculus/vrshell/panelservice/SigCertVerifier$SigCertInfo;->signature:Landroid/content/pm/Signature;

    .line 228
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/vrshell/panelservice/SigCertVerifier$SigCertInfo;->packageNames:Ljava/util/Set;

    return-void
.end method

.method public static createTrusted(Landroid/content/pm/Signature;Ljava/util/Set;)Lcom/oculus/vrshell/panelservice/SigCertVerifier$SigCertInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/Signature;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/oculus/vrshell/panelservice/SigCertVerifier$SigCertInfo;"
        }
    .end annotation

    .line 232
    new-instance v0, Lcom/oculus/vrshell/panelservice/SigCertVerifier$SigCertInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/oculus/vrshell/panelservice/SigCertVerifier$SigCertInfo;-><init>(ZLandroid/content/pm/Signature;Ljava/util/Set;)V

    return-object v0
.end method

.method public static createUntrusted(Landroid/content/pm/Signature;Ljava/util/Set;)Lcom/oculus/vrshell/panelservice/SigCertVerifier$SigCertInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/Signature;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/oculus/vrshell/panelservice/SigCertVerifier$SigCertInfo;"
        }
    .end annotation

    .line 236
    new-instance v0, Lcom/oculus/vrshell/panelservice/SigCertVerifier$SigCertInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/oculus/vrshell/panelservice/SigCertVerifier$SigCertInfo;-><init>(ZLandroid/content/pm/Signature;Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SigCertInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "isTrusted="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget-boolean v1, p0, Lcom/oculus/vrshell/panelservice/SigCertVerifier$SigCertInfo;->isTrusted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", packageNames=["

    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget-object v1, p0, Lcom/oculus/vrshell/panelservice/SigCertVerifier$SigCertInfo;->packageNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    add-int/2addr v2, v4

    if-le v2, v4, :cond_0

    const-string v4, ","

    .line 248
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "]"

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", signature="

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    iget-object v1, p0, Lcom/oculus/vrshell/panelservice/SigCertVerifier$SigCertInfo;->signature:Landroid/content/pm/Signature;

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
