.class final Lcom/oculus/horizon/vrbugreporter/PackageUtil$1;
.super Ljava/lang/Object;
.source "PackageUtil.java"

# interfaces
.implements Lcom/oculus/horizon/vrbugreporter/PackageUtil$PackageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/vrbugreporter/PackageUtil;->describeInstalledPackages(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/oculus/horizon/vrbugreporter/PackageUtil$1;->val$sb:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/PackageUtil$1;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/PackageUtil$1;->val$sb:Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/PackageUtil$1;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/PackageUtil$1;->val$sb:Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/PackageUtil$1;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/PackageUtil$1;->val$sb:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    return-void
.end method
