.class public Lcom/oculus/signature/inject/SignatureChecker$NotFirstPartySignatureException;
.super Ljava/lang/RuntimeException;
.source "SignatureChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/signature/inject/SignatureChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotFirstPartySignatureException"
.end annotation


# direct methods
.method public constructor <init>(Lcom/oculus/signature/inject/SignatureCheck;)V
    .locals 1

    .prologue
    .line 21
    const-string v0, "First party signature check failed! %s"

    invoke-static {v0, p1}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method
